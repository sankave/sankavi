<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<title>Insert title here</title>
</head>
<body>
<form:form action="WithinBank" modelAttribute="tran">
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


<%-- <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Beneficiary Description
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><td>${rs.accountNo}</td></li>
    </ul>
  </div> --%>

<!-- </tr> -->
 <tr>
<td>Beneficiary Description</td>
<td><form:select path="benificiaryName"></form:select></td>
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

<%-- <tr>

<td>Beneficiary name</td>
<td><form:select path="benificiaryName">

 <c:forEach var="beni" items="${reg.benificiary}">
<c:if test="${reg.benificiary.id==reg.id}">
<form:option value="${reg.benificiary.name }" label="${reg.benificiary.name}"></form:option>
</c:if>
</c:forEach> 
</form:select></td>
</tr> --%>
<%-- </table>
</form:form> --%>
</body>
</html>