Algoritmo ValidarComprobante
    Definir numeroComprobante Como Cadena
    Definir tipoComprobante, guion, caracter Como Cadena
    Definir i Como Entero
    Definir valido Como Logico
	
    Escribir "Ingrese el número de comprobante:"
    Leer numeroComprobante
	
    valido <- Verdadero
	
    //Validar longitud
    Si Longitud(numeroComprobante) = 13 Entonces
		
        //Validar primera letra
        tipoComprobante <- SubCadena(numeroComprobante, 0, 0)
		
        Si tipoComprobante = "B" O tipoComprobante = "F" Entonces
			
            //Validar guion
            guion <- SubCadena(numeroComprobante, 4, 4)
			
            Si guion = "-" Entonces
				
                //Validar 3 dígitos de la serie
                Para i <- 1 Hasta 3 Hacer
					
                    caracter <- SubCadena(numeroComprobante, i, i)
					
                    Si caracter < "0" O caracter > "9" Entonces
                        valido <- Falso
                    FinSi
					
                FinPara
				
                Si valido = Verdadero Entonces
                    Escribir "Comprobante válido"
                SiNo
                    Escribir "Serie inválida"
                FinSi
				
            SiNo
                Escribir "Guion inválido"
            FinSi
			
        SiNo
            Escribir "Letra inválida"
        FinSi
		
    SiNo
        Escribir "Formato inválido"
    FinSi
	
FinAlgoritmo