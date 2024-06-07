package com.shrutija;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String sellingPrice = request.getParameter("sellingPrice");
        String financeOptions = request.getParameter("financeOptions");
        String downPayment = request.getParameter("downPayment");
        String interestRate = request.getParameter("interestRate");
        String totalFinanceAmount = request.getParameter("totalFinanceAmount");
        String numberOfInstallments = request.getParameter("numberOfInstallments");
        String installmentAmount = request.getParameter("installmentAmount");
        String productDescription = request.getParameter("productDescription");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShrutijaEMI", "root", "password");
            String query = "INSERT INTO products (product_name, selling_price, finance_options, down_payment, interest_rate, total_finance_amount, number_of_installments, installment_amount, product_description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, sellingPrice);
            ps.setString(3, financeOptions);
            ps.setString(4, downPayment);
            ps.setString(5, interestRate);
            ps.setString(6, totalFinanceAmount);
            ps.setString(7, numberOfInstallments);
            ps.setString(8, installmentAmount);
            ps.setString(9, productDescription);
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("addProduct.jsp");
    }
}