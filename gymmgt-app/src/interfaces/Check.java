/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author ANURUDDHA
 */
public class Check {

    public static int id(String id) throws Exception {
        int i = 0;
        if (id.length() < 10) {
            i = 0;
        } else {
            String id1 = id.substring(9);
            if (id1.equals("v")) {
                i = 1;
            } else {
                i = 0;
            }
        }
        return i;
    }

    public static boolean isValidEmailAddress(String emailAddress) {
        String expression = "^[\\w\\-]([\\.\\w])+[\\w]+@([\\w\\-]+\\.)+[A-Z]{2,4}$";
        CharSequence inputStr = emailAddress;
        Pattern pattern = Pattern.compile(expression, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(inputStr);
        return matcher.matches();

    }
    
    public static int tp(String id) throws Exception {
        int i = 0;
        if (id.length() != 10) {
            i = 0;
        } else {
            String id1 = id.substring(0,1);
            if (id1.equals("0")) {
                i = 1;
            } else {
                i = 0;
            }
        }
        return i;
    }
}
