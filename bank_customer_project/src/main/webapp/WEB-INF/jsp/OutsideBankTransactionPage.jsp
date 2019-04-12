<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="OutsideBank" modelAttribute="tran">
<table>
<%-- <tr>
<td>accountNo</td>
<td><form:input path="accountNo" /></td>
<td>${reg.benificiary.b_id}</td>
</tr> --%>
<tr>
<td>AccountNo</td>
<td><form:input path="accountNo"></form:input></td>
</tr>
<tr>
<td>Beneficiary Description</td>
<td><form:input path="benificiaryName"></form:input></td>
</tr>
<tr>
<td>Transfer Description</td>
<td><form:input path="transferDescription"></form:input></td>
</tr>
<tr>
<td>Transfer Amount</td>
<td><form:input path="transferAmount"></form:input></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Submit"></td>
</tr>
</table>
</form:form>

</body>
</html>