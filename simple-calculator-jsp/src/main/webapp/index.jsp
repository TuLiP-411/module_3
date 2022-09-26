<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<h2>Simple Calculator</h2>
<fieldset>
    <legend>Calculator</legend>
    <form action="/calculator" method="post">
        <table>
            <tr>
                <td>First operand:</td>
                <td><input type="text" name="firstOp" placeholder="Enter first operand"></td>
            </tr>
            <tr>
                <td>Operator:</td>
                <td>
                    <select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand:</td>
                <td><input type="text" name="secondOp" placeholder="Enter second operand"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button name="calculate" type="submit">Calculate</button>
                </td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>