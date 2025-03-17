<%@ page import="java.time.LocalTime" %>
<html>
<body>
    <%
        String name = "NImani"; // Change this to your actual name
        LocalTime currentTime = LocalTime.now();
        String greeting = (currentTime.getHour() < 12) ? 
            "Good morning, " + name + ", Welcome to COMP367" : 
            "Good afternoon, " + name + ", Welcome to COMP367";
    %>
    <h2><%= greeting %></h2>
</body>
</html>
