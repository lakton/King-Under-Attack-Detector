package com.lakton;

import com.lakton.ChessMath;
import com.lakton.Piece;

public class Main {
    public static void main(String[] args) {
        Piece king = new Piece();
        king.x = 3;
        king.y = 4;

        Piece[] rooks = new Piece[3];
        for (int i = 0; i < rooks.length; i++) {
            rooks[i] = new Piece();
            rooks[i].x = i + 1;
            rooks[i].y = i + 2;
        }

        for (int i = 0; i < rooks.length; i++) {
            if ((rooks[i].x == king.x && ChessMath.isWithinRange(rooks[i].y, king.y - 1, king.y + 1)) ||
                    (rooks[i].y == king.y && ChessMath.isWithinRange(rooks[i].x, king.x - 1, king.x + 1))) {
                System.out.println("King is under attack!");
                break;
            }
        }
    }
}
