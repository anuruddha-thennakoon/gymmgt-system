/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.Calendar;

/**
 *
 * @author ANURUDDHA
 */
public class QuickDateTime {

    public static String date() {
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH) + 1;
        int date = cal.get(Calendar.DATE);
        String s = (year + "-" + month + "-" + date);
        return s;
    }
}
