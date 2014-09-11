<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 9/10/14
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
<body>
<h2>Enter your details.</h2>
<s:form action="customerAction" >
	<s:textfield name="custName" label="Name " value=""/>
	<s:textarea name="address" label="Address " value="" cols="30" rows="5" />
	<s:radio name="gender" label="Gender " list="{'Male','Female'}" />
	<s:select name="item" list="{'Laptop','Car','Phone'}" headerKey=""
	          headerValue="Select-Item" label="Select an Item " />
	<s:submit name="submit"/>
</s:form>
</body>
</html>
