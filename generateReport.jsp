<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Report</title>
</head>
<body>
    <h1>Generate Report</h1>
    <form action="generateReport" method="post">
        <label for="criteria">Select Criteria:</label>
        <select id="criteria" name="criteria">
            <option value="customer">Customer</option>
            <option value="product">Product</option>
        </select><br><br>
        
        <input type="submit" value="Generate Report">
    </form>
    <!-- Display generated report here -->
</body>
</html>