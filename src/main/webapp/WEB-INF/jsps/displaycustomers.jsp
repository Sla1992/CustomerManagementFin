<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Customers</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Customer Management</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="showCreate">Add Customer <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="displayCustomers">View All</a>
            </li>

        </ul>
    </div>
</nav>

<div class="d-flex justify-content-center">
    <h2>Customers</h2>
</div>
<div class="border-top pt-3">
</div>

<div class="d-flex justify-content-center">
<%
    Connection connection =
            DriverManager.getConnection("jdbc:mysql://localhost:3306/customermanagement?useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "sml12345");

    Statement statement = connection.createStatement();
    String query = "SELECT customermanagement.customer.id, " +
            "customermanagement.customer.firstName, " +
            "customermanagement.customer.lastName, " +
            "customermanagement.address.street, " +
            "customermanagement.address.number, " +
            "customermanagement.address.plz, " +
            "customermanagement.address.city," +
            "customermanagement.contact.businessname," +
            "customermanagement.contact.value, " +
            "customermanagement.contact.type, " +
            "customermanagement.contact.sort, " +
            "customermanagement.contact.idcontact, " +
            "customermanagement.address.idaddress " +
            "FROM customermanagement.customer LEFT JOIN " +
            "customermanagement.address ON " +
            "customermanagement.address.fkcustomer = " +
            "customermanagement.customer.id LEFT JOIN " +
            "customermanagement.contact ON " +
            "customermanagement.contact.fkcustomer = " +
            "customermanagement.customer.id "+
            "order by customer.id desc";


    ResultSet resultset =
            statement.executeQuery(query) ;
%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">#ID</th>
        <th scope="col">First Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Street</th>
        <th scope="col">Number</th>
        <th scope="col">PLZ</th>
        <th scope="col">City</th>
        <th scope="col">Business Name</th>
        <th scope="col">Value</th>
        <th scope="col">Type</th>
        <th scope="col">Sort</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    <% while(resultset.next()){ %>
    </thead>
    <tbody>
    <tr>
        <% long id = resultset.getLong(1); %>

        <td> <%= resultset.getLong(1)%></td>
        <td> <%= resultset.getString(2) %></td>
        <td> <%= resultset.getString(3) %></td>
        <td> <%= resultset.getString(4) %></td>
        <td> <%= resultset.getString(5) %></td>
        <td> <%= resultset.getString(6) %></td>
        <td> <%= resultset.getString(7) %></td>
        <td> <%= resultset.getString(8) %></td>
        <td> <%= resultset.getString(9) %></td>
        <td> <%= resultset.getString(10) %></td>
        <td> <%= resultset.getString(11) %></td>
        <td><a href="showUpdate?id=<%=id%>">update</a></td>
        <td><a href="deleteLocations?id=<%=id%>">delete</a></td>
    </tr>
    <% } %>
    </tbody>
</table>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>