<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
</head>
<body>
    <h1>Add New Product</h1>
    <form action="addProduct" method="post">
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="productName" required><br><br>
        
        <label for="sellingPrice">Selling Price:</label>
        <input type="text" id="sellingPrice" name="sellingPrice" required><br><br>
        
        <label for="financeOptions">Finance Options:</label>
        <input type="text" id="financeOptions" name="financeOptions" required><br><br>
        
        <label for="downPayment">Down Payment:</label>
        <input type="text" id="downPayment" name="downPayment" required><br><br>
        
        <label for="interestRate">Interest Rate:</label>
        <input type="text" id="interestRate" name="interestRate" required><br><br>
        
        <label for="totalFinanceAmount">Total Finance Amount:</label>
        <input type="text" id="totalFinanceAmount" name="totalFinanceAmount" required><br><br>
        
        <label for="numberOfInstallments">Number of Installments:</label>
        <input type="text" id="numberOfInstallments" name="numberOfInstallments" required><br><br>
        
        <label for="installmentAmount">Installment Amount:</label>
        <input type="text" id="installmentAmount" name="installmentAmount" required><br><br>
        
        <label for="productDescription">Product Description:</label>
        <textarea id="productDescription" name="productDescription" required></textarea><br><br>
        
        <input type="submit" value="Add Product">
    </form>
</body>
</html>