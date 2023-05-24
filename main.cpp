#include <iostream>
#include <string>
#include <regex>
#include "ChessMath.h"

using namespace std;

struct Piece {
    int x;
    int y;
};

int main() {
    Piece king, rooks[3];

    // Get input from user
    string input;
    smatch matches;
    regex pattern("[a-h][1-8]"); // regex pattern to match chess piece coordinates
    bool validInput = true;

    cout << "Enter the king's position (e.g. d5): ";
    cin >> input;
    validInput = regex_match(input, matches, pattern);
    if (validInput) {
        king.x = input[0] - 'a' + 1;
        king.y = input[1] - '0';
    }

    for (int i = 0; i < 3; i++) {
        cout << "Enter the position of rook " << i + 1 << " (e.g. d5): ";
        cin >> input;
        bool validRook = regex_match(input, matches, pattern);
        if (validRook) {
            rooks[i].x = input[0] - 'a' + 1;
            rooks[i].y = input[1] - '0';
        }
        validInput = validInput && validRook;
    }

    // Handle invalid input
    if (!validInput) {
        cout << "Invalid input: input must be in the format of a-h1-8" << endl;
        return 0;
    }

    // Check if king is under attack and from which rook
    bool underAttack = false;
    int threatRook = -1;
    for (int i = 0; i < 3; i++) {
        if (rooks[i].x == king.x || rooks[i].y == king.y) {
            underAttack = true;
            if (threatRook == -1) {
                threatRook = i;
            } else {
                cout << "Invalid input: multiple rooks attack the king" << endl;
                return 0;
            }
        }
        // Check if rook could move to the king's position
        if ((rooks[i].x == king.x && ChessMath::isWithinRange(rooks[i].y, king.y - 1, king.y + 1)) ||
            (rooks[i].y == king.y && ChessMath::isWithinRange(rooks[i].x, king.x - 1, king.x + 1))) {
            cout << "Invalid input: rook " << i + 1 << " can move the king's position" << endl;
            return 0;
        }
    }

    // Check if king is on the same position as a rook
    for (int i = 0; i < 3; i++) {
        if (rooks[i].x == king.x && rooks[i].y == king.y) {
            cout << "Invalid input: king is on the same position as rook " << i + 1 << endl;
            return 0;
        }
    }

    // Print result
    if (underAttack) {
        cout << "King is under attack from rook " << threatRook + 1 << endl;
    } else {
        cout << "King is not under attack" << endl;
    }

    return 0;
}
