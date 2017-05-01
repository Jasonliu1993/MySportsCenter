package com.mysportscenter.utilities;

/**
 * Created by Jason on 5/1/17.
 */
public class EscapeWord {
    public static String getEscaping(String input) {
        String output = null;
        output = input.replace("<","&lt;");
        return output;
    }
}
