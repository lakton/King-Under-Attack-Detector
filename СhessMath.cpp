// ChessMath.cpp
#include "ChessMath.h"
#include <cmath>

bool ChessMath::isWithinRange(int value, int min, int max) {
    return value >= min && value <= max;
}

int ChessMath::calculateAbsoluteDifference(int a, int b) {
    return std::abs(a - b);
}