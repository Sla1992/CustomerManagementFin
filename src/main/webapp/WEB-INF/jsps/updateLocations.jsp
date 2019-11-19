<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Customer</title>
</head>
<body>
<form action="saveLoc" method="POST">
    <pre>

                  ID:   <input type="text" name="id" value="${customer.id}" readonly/>

            Fistname:   <input type="text" name="firstName" value="${customer.firstName}"/>

            Lastname:   <input type="text" name="lastName" value="${customer.lastName}"/>

         <input type=hidden name="fkcostumer" value="${address.fkcustomer}" readonly/>
              Street:   <input type="text" name="street" value="${address.street}"/>

              Number:   <input type="text" name="number" value="${address.number}"/>

                 PLZ:   <input type="text" name="plz" value="${address.plz}"/>

                City:   <input type="text" name="city" value="${address.city}"/>

         <input type=hidden name="fkcostumer" value="${contact.fkcustomer}" readonly />
        Businessname:   <input type="text" name="businessname" value="${contact.businessname}"/>

               Value:   <input type="text" name="value" value="${contact.value}"/>

                Type:   <select name="sort" >
              <option value="phone">phone</option>
              <option value="mobile">mobile</option>
              <option value="fax">fax</option>
              <option value="email">email</option>
          </select>

                Sort:   <select name="type" >
              <option value="privat">private</option>
              <option value="business">business</option>
          </select>

                        <input type="submit" value="save"/>
    </pre>
</form>
<a href="displayCustomers">View All</a>
</body>
</html>