<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 9/10/14
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
<body>
<h2>Customer Saved Successfully...!!! </h2>

<table border="1px" >
	<tr>
		<th>Name</th>
		<th>Address</th>
		<th>Gender</th>
		<th>Item</th>
	</tr>
	<s:iterator value="savedCustomerList">
		<tr>
			<td><s:property value="custName" /></td>
			<td><s:property value="address" /></td>
			<td><s:property value="gender" /></td>
			<td><s:property value="item" /></td>
		</tr>
	</s:iterator>
</table>
</body>
</html>
