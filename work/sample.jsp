<html>
<head>
    <title>Sample Application JSP Page</title>
</head>

<body bgcolor=white>

<table border="0" cellpadding="10">
    <tr>
        <td>
            <h1>Sample Application for chef-workshop</h1>
        </td>
    </tr>
</table>

<br />

<%= new String("Hello!") %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","sample","sample");
    Statement st= con.createStatement();
    ResultSet rs=st.executeQuery("select * from items");
    if(rs.next())
    {
            out.println("item :"+rs.getString("item_id"));

    }
%>

</body>
</html>