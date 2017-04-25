package com.mysportscenter.utilities;

import java.util.Date;
import java.text.SimpleDateFormat;
/**
 * Created by Jason on 4/24/17.
 */
public class DateUtility {
    public static String getCurrentDate () {
        Date currentdate = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        return simpleDateFormat.format(currentdate);
    }
}