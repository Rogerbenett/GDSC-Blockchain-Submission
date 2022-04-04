// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Calculator {
    uint result;
    uint History = 0;

    function Add(uint x, uint y) public {
        result = x + y;
        History += result;
    }

    function Subtract(uint x, uint y) public {
        result = x - y;
    }

    function Multiply(uint x, uint y) public {
        result = x * y;
    }

    function Divide(uint x, uint y) public {
        require(y!=0,'Division by zero not possible');
        result = x / y;
    }

    function Exponent(uint x, uint y) public {
        result = x ** y;
    }

    function Factorial(uint x) public {
        result = 1;
        for(x; x>0; x--) {
            result *= x; 
        }
    }    

    function Remainder(uint x, uint y) public {
        require(y!=0,'Division by zero not possible');
        result = x % y;
    }

    function Get() public view returns (uint) {
        return result;
    }

    function Add_history() public view returns (uint) {
        return History;
    }

    function clearAddHistory() public returns (uint) {
        History = 0;
        return History;
    }
}
