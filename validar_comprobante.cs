using System;
public class validar_comprobante
{
    public static void Main(string[] args)
    {
        //Entradas
        Console.WriteLine(ValidarComprobanteElectronico("B123-00032123"));
        Console.WriteLine(ValidarComprobanteElectronico("A121-32121"));
    }
    static bool ValidarComprobanteElectronico(string numero)
    {
    //Declaración de variables    
    string tipodecomprobante, guion;
    char caracter;
    int i;
    bool valido; 

        //Validar longitud
        valido = true;

        if (numero.Length == 13)
        {
            //seguir validando
            tipodecomprobante = numero.Substring(0,1);
            if(tipodecomprobante=="B" || tipodecomprobante == "F")
            {
                //seguir validado
                guion = numero.Substring(4,1);
                if (guion == "-")
                {
                    //seguir validando
                    for (i=1; i <= 3; i++)
                    {
                        caracter = numero [i];
                        if(caracter < '0' || caracter > '9')
                        {
                        valido = false;
                        }
                    }
                    if(valido)
                    {
                        for (i=5; i<= 12; i++)
                        {
                        caracter = numero [i];
                        if(caracter < '0' || caracter > '9')
                            {
                                valido = false;
                            }
                        }
                    }
                    if (valido)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    
    }
}