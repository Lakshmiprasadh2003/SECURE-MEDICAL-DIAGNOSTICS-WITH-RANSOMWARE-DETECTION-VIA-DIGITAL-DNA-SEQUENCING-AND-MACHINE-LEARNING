/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;


import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import sun.misc.BASE64Encoder;

/**
 *
 * @author mvinoth
 */
public class Encryption {
    public String Encryption1(String value) throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException
    {
        String Encry="";
        try {
            
              String plainData=value,decryptedText;
            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(128);
            SecretKey secretKey = keyGen.generateKey();
            Cipher aesCipher=null;
            try {
                aesCipher = Cipher.getInstance("AES");
            } catch (NoSuchPaddingException ex) {
                Logger.getLogger(Encryption.class.getName()).log(Level.SEVERE, null, ex);
            }
            aesCipher.init(Cipher.ENCRYPT_MODE,secretKey);
            byte[] byteDataToEncrypt = plainData.getBytes();
            byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); 
            Encry = new BASE64Encoder().encode(byteCipherText);
                    try {
                        aesCipher.init(Cipher.DECRYPT_MODE,secretKey,aesCipher.getParameters());
                    } catch (InvalidAlgorithmParameterException ex) {
                     
                    }
            byte[] byteDecryptedText = aesCipher.doFinal(byteCipherText);
            decryptedText = new String(byteDecryptedText);
            System.out.println("\n Plain Data : "+plainData+" \n Cipher Data : "+Encry+" \n Decrypted Data : "+decryptedText);
           
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Encryption.class.getName()).log(Level.SEVERE, null, ex);
        }
         return Encry;
    }
    
}
