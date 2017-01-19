<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>
<title>Confirmation</title>
</head>
<body><br><br><br>
<center><h1>
	Please Click here for further payment processing.....</h1></center><br>
	<form>
    <label class="radio-inline">
      <input path="gender" type="radio" name="optradio">Cash on Delivery
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Credit/Debit Card
    </label>
    
  </form>
	<center><h1><a href="checkout"><b>Submit</b></a></h1></center>
	

</body>
</html>