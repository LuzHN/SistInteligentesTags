/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tags;

import java.io.File;

/**
 *
 * @author Cabrera
 */
public class Main {
    
    
    public static void main(String[] args){

        File archivo = new File("./src/Tags/Lexer.flex");
        jflex.Main.generate(archivo);
    }
    

}
