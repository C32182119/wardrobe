package com.fzu.util;


public class Util {

    private static final String[] radix = {
            "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
            "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
            "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
            "u", "v", "w", "x", "y", "z",
            "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
            "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
            "U", "V", "W", "X", "Y", "Z"};

    private static int count = 10;

    private static int getCount() {
        if (count > 99) {
            count = 10;
        }
        return count++;
    }

    //递归实现
//    private static String convertHex(long value) {
//        if (value < 0) {
//            value = -value;
//        }
//        if (value < radix.length) {
//            return radix[(int)value];
//        }
//        else {
//            long n = value % (long)(radix.length);
//            return (convertHex((value / radix.length)) + radix[(int)n]);
//        }
//    }

    private static String convertHex(long value) {
        long m, n;
        String result = "";
        if (value < 0) {
            value = -value;
        }
        m = value;
        while (m != 0) {
            n = m % radix.length;
            m /= radix.length;
            result = radix[(int)n] + result;
        }
        result = "u" + result;
        return result;
    }

    private static String generateId() {
        return convertHex(System.currentTimeMillis());
    }

    public static String getNewIdByType(String type) {
        return type + generateId() + getCount();
    }

//    public static void main(String [] args) {
//        long value = System.currentTimeMillis();
//        String res;
//        long startTime, endTime;
//        startTime = System.currentTimeMillis();
//        res = convertHex(value);
//        endTime = System.currentTimeMillis();
//        System.out.printf("convertHex: %s; use time: %d ms\n", res, startTime);
//        System.out.printf("generateId: %s\n", generateId());
//        System.out.printf("getNewIdByType: %s\n", getNewIdByType("u"));
//
//    }

}
