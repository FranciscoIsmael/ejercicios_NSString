//
//  main.m
//  ejercicios_NSString
//
//  Created by A1-IMAC13 on 30/9/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //1. Declara el NSString nombre y el NSNumber puesto
        
        NSString *nombre;
        NSNumber *puesto;
        
        //2. Asigna valores a puesto y nombre
        
        nombre = @"Ismael";
        puesto = @24;
        
        //3. Imprime "Hola soy MiNombre, estoy en el puesto número X" utilizando los valores de las variables anteriores
        
        NSString * frase = [[[@"Hola soy " stringByAppendingString:nombre] stringByAppendingString:@", estoy en el puesto número "] stringByAppendingString:[puesto stringValue]];
        NSLog(@"%@",frase);
        
        //4. Imprime el número de caracteres de la frase anterior
        
        int numeroCaracteres = frase.length;
        NSLog(@"La frase anterior tiene %i caracteres", numeroCaracteres);
        
        //5. Imprime la primera letra
        
        NSLog(@"La primera letra de la frase es: %@",[frase substringToIndex:1]);
        
        //6. Comprobar si el String contiene la letra a
        
        if([frase rangeOfString:@"a"].location != NSNotFound){
            NSLog(@"El string tiene la letra a");
        }else{
            NSLog(@"El string no tiene la letra a");
        }
        
        //7. Contar cuántas veces contiene la letra a
        int i;
        int contadorA = 0;
        for(i = 0; i < frase.length; i++){
            char caracter = [frase characterAtIndex:i];
            char a = 'a';
            if(caracter == a){
                contadorA++;
            }
        }
        NSLog(@"El string tiene %i letas A",contadorA);

        //8. Declarar array "palabras"

        NSArray *arrayPalabras;
        
        //9. Guardar una palabra en cada posición del array
        
        arrayPalabras = [frase componentsSeparatedByString:@" "];
        
        //10. Formar un NSString con las palabras del array en orden inverso
        
        NSArray * arrayInvertido = [[arrayPalabras reverseObjectEnumerator] allObjects];
        NSString * fraseInvertida = [arrayInvertido componentsJoinedByString:@" "];
        NSLog(@"%@",fraseInvertida);
        
        //11. Eliminar los primeros 3 caracteres del string. Imprimirlo.

        NSString * fraseInvertidaDos = [fraseInvertida substringFromIndex:3];
        NSLog(@"String con los 3 primeros caracteres eliminados: %@",fraseInvertidaDos);
        
        //12. Eliminar los 2 últimos caracteres del string. Imprimirlo.
        
        NSString * fraseInvertidaTres = [fraseInvertidaDos substringWithRange:NSMakeRange(0, [fraseInvertidaDos length] -2)];
        NSLog(@"String con los 3 primeros caracteres y los 2 ultimos eliminados: %@",fraseInvertidaTres);

        //14. Volver a añadir los caracteres que hemos eliminado al principio y al final

        NSString * fraseInvertidaCuatro = [@"24 " stringByAppendingString:[fraseInvertidaTres stringByAppendingString:@"la"]];
        NSLog(@"%@",fraseInvertidaCuatro);
        
        //15. Todas las letras del string deben ser mayúsculas

        NSString * fraseInvertidaCinco = [fraseInvertidaCuatro uppercaseString];
        NSLog(fraseInvertidaCinco);
        
        //16. Obtener la posición de la palabra "puesto"
        
        int posicionPuesto = [frase rangeOfString:@"puesto"].location;
        
        //17. Imprimir la frase "La palabra puesto está en la posición X", sustituyendo X por la posición donde se encuentra.
        
        NSLog(@"La palabra puesto está en la posición %i",posicionPuesto);
        
        //18. Definir un NSMutableSring con el contenido "Hola soy una cadena"
        
        NSMutableString * stringMutable = [NSMutableString stringWithString:@"Hola soy una cadena"];
        NSLog(stringMutable);

        //19. Añadir al final del string anterior " y estoy siendo modificada"
        
        [stringMutable appendString:@" y estoy siendo modificada"];
        NSLog(stringMutable);

        //20. Sumar 5 al NSNumber puesto
        
        puesto = puesto +@5;
        NSLog(@"Ahora el puesto es: %@",puesto);
        
    }
    return 0;
}
