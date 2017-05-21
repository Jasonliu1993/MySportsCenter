package com.mysportscenter.log;

import com.mysportscenter.utilities.DateUtility;

/**
 * Created by Jason on 5/18/17.
 */
public class TimeMarker {
    public void markTime() {
        System.out.println("++++++Begin++++++++" + DateUtility.getCurrentDate());
    }
}
