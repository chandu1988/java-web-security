<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="de.dominikschadow.webappsecurity.token.CSRFTokenHandler" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chapter 08 - CSRF</title>
    <link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
</head>
<body>
    <h1>Chapter 08 - CSRF: Working Form</h1>

    <form action="ProtectedServlet" name="changePasswordForm" method="POST">
        <input type="hidden" name="<%=CSRFTokenHandler.CSRF_TOKEN%>"
               value="<%=CSRFTokenHandler.getToken(request.getSession(false))%>">
        <table>
            <tr>
                <td>New Password</td>
                <td><input type="password" name="newPassword" class="text-input"></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="confirmPassword" class="text-input"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>