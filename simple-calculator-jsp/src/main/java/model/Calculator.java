package model;

public class Calculator {
    public static float calculate(float firstOp, float secondOp, char operand) {
        switch (operand) {
            case '+':
                return firstOp + secondOp;
            case '-':
                return firstOp - secondOp;
            case '*':
                return firstOp * secondOp;
            case '/':
                if (secondOp != 0) {
                    return firstOp / secondOp;
                } else {
                    throw new RuntimeException("Can not devide by zero");
                }
            default:
                throw new RuntimeException("Invalid Operation");
        }
    }
}
