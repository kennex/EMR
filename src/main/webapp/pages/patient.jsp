<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 9/6/14
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>

<body>
<h1>Struts 2 + Spring + Hibernate integration example</h1>

<h2>Add Customer</h2>
<s:form action="addPatientAction" >
	<s:textfield name="name" label="Name" value="" />
	<s:textarea name="address" label="Address" value="" cols="50" rows="5" />
	<s:submit />
</s:form>

<h2>All Customers</h2>

<s:if test="patientList.size() > 0">
	<table border="1px" cellpadding="8px">
		<tr>
			<th>Customer Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Created Date</th>
		</tr>
		<s:iterator value="patientList" status="userStatus">
			<tr>
				<td><s:property value="patientId" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="address" /></td>
				<td><s:date name="createdDate" format="dd/MM/yyyy" /></td>
			</tr>
		</s:iterator>
	</table>
</s:if>
<br/>
<br/>

</body>
</html>
