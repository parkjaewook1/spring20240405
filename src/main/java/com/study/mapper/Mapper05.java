package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface Mapper05 {


    @Data
    static class CustomerIncome {
        private Integer customerId;
        private String customerName;
        private String contactName;
        private Double income;


    }

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }

    @Select("""
            SELECT e.EmployeeId,
                   e.LastName,
                   e.FirstName,
                   SUM(od.Quantity * p.Price) AS income
            FROM Orders o JOIN Employees e ON o.EmployeeId = e.EmployeeId
                          JOIN OrderDetails od ON o.OrderId = od.OrderId
                          JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY e.EmployeeId
            ORDER BY income DESC
            """)
    List<EmployeeIncome> selectIncomeList1(String from, String to);

    @Select("""
                        SELECT SUM(od.Quantity * p.Price) AS income
                        FROM Orders o JOIN OrderDetails od ON o.OrderId = od.OrderId
                        JOIN Customers c ON od.CustomerId = c.CustomerId
                        JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
                    GROUP BY c.CustomerId
                    ORDER BY income DESC
                    """)
    List<CustomerIncome> selectIncomeList2(String from, String to);
}
