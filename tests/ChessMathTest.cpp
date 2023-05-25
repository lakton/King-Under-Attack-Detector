#include "King-Under-Attack-Detector/googletest-release-1.8.0/googletest/include/gtest/gtest.h"
#include "../ChessMath.h"

TEST(ChessMathTest, IsWithinRangeTest) {
    // Test cases for isWithinRange()
    EXPECT_TRUE(ChessMath::isWithinRange(5, 1, 10));
    EXPECT_FALSE(ChessMath::isWithinRange(15, 1, 10));
    EXPECT_TRUE(ChessMath::isWithinRange(0, 0, 5));
    EXPECT_FALSE(ChessMath::isWithinRange(-1, 0, 5));
}

TEST(ChessMathTest, CalculateAbsoluteDifferenceTest) {
    // Test cases for calculateAbsoluteDifference()
    EXPECT_EQ(ChessMath::calculateAbsoluteDifference(5, 10), 5);
    EXPECT_EQ(ChessMath::calculateAbsoluteDifference(10, 5), 5);
    EXPECT_EQ(ChessMath::calculateAbsoluteDifference(-5, 10), 15);
    EXPECT_EQ(ChessMath::calculateAbsoluteDifference(10, -5), 15);
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
