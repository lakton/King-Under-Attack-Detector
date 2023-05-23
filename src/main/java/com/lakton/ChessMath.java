package com.lakton;

class ChessMath {
    public static boolean isWithinRange(int value, int min, int max) {
        return value >= min && value <= max;
    }

    public static int calculateAbsoluteDifference(int a, int b) {
        return Math.abs(a - b);
    }
}
