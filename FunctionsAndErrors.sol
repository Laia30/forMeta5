pragma solidity ^0.8.17;

contract FunctionsAndErrors {
    uint public multipleOfThreeCount;

    // Using require() to ensure the number is a multiple of 3
    function requireMultipleOfThree(uint number) external {
        require(number % 3 == 0, "The number you inputted is not a multiple of 3");
        ++multipleOfThreeCount;
    }

    // Using assert() to ensure the number is a multiple of 3
    function assertMultipleOfThree(uint number) external {
        assert(number % 3 == 0);
        ++multipleOfThreeCount;
    }

    // Using revert() to ensure the number is a multiple of 3
    function revertMultipleOfThree(uint number) external {
        if (number % 3 != 0) {
            revert("The number you inputted is not a multiple of 3");
        }
        ++multipleOfThreeCount;
    }
}
