Algoritmo ValidarComprobanteElectronico

    Definir numeroComprobante Como Cadena
    Definir tipoComprobante, guion, caracter Como Cadena
    Definir i Como Entero
    Definir valido Como Logico

    Escribir "Ingrese el número de comprobante:"
    Leer numeroComprobante

    valido <- Verdadero

    // Validar longitud
    Si Longitud(numeroComprobante) = 13 Entonces

        // Validar primera letra
        tipoComprobante <- SubCadena(numeroComprobante, 0, 0)

        Si tipoComprobante = "B" O tipoComprobante = "F" Entonces

            // Validar guion
            guion <- SubCadena(numeroComprobante, 4, 4)

            Si guion = "-" Entonces

                // Validar los 3 dígitos de la serie
                Para i <- 1 Hasta 3 Hacer

                    caracter <- SubCadena(numeroComprobante, i, i)

                    Si caracter < "0" O caracter > "9" Entonces
                        valido <- Falso
                    FinSi

                FinPara

                // Validar los 8 dígitos del correlativo
                Si valido = Verdadero Entonces

                    Para i <- 5 Hasta 12 Hacer

                        caracter <- SubCadena(numeroComprobante, i, i)

                        Si caracter < "0" O caracter > "9" Entonces
                            valido <- Falso
                        FinSi

                    FinPara

                FinSi

                // Resultado final
                Si valido = Verdadero Entonces
                    Escribir "Comprobante válido"
                Sino
                    Escribir "Comprobante inválido"
                FinSi

            Sino
                Escribir "Comprobante inválido"
            FinSi

        Sino
            Escribir "Comprobante inválido"
        FinSi

    Sino
        Escribir "Comprobante inválido"
    FinSi

FinAlgoritmo