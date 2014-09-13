<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>EMR | Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="layout" content="main"/>

	<script type="text/javascript" src="../../js/jsapi.js"></script>
	<script src="../../js/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="../../css/custo.css">
	<link href="../../css/customize-template.css" type="text/css" media="screen, projection" rel="stylesheet"/>
</head>
</head>
<body style="background-color: #ffffff">

<form action="login" id="loginfom" class="form-inline logform" method="POST">

	<h2>Login</h2>
	<s:hidden name="loginAttempt" value="%{'1'}"/>
	<p>

	<div class="input-prepend">
		<span class="add-on">Username</span>
		<s:textfield name="name" cssClass="span4"/>
		<%--<input class="span4" name="username" type="text" placeholder="Your name">--%>
	</div>
	</p>
	<p>

	<div class="input-prepend">
		<span class="add-on">Password</span>
		<s:textfield name="pwd" cssClass="span4"/>
		<%--<input class="span4" type="password" name="userpass" placeholder="Password">--%>
	</div>
	</p>
	<%--<s:submit cssClass="btn btn-primary" name="submit" label="Login">--%>
	<%--<i class="badge-success"></i>--%>
	<%--</s:submit>--%>
	<button type="submit" class="btn btn-primary">
		<i class="icon-ok"></i>
		Submit
	</button>

	<s:if test="hasActionErrors()">
		<div class="alert-message error">
			<p>
				<s:actionerror cssStyle="list-style: none;"/>
			</p>
		</div>
	</s:if>

	<s:if test="hasActionMessages()">
		<div class="alert-message success">
			<p>
				<s:actionmessage cssStyle="list-style:none"/>
			</p>
		</div>
	</s:if>
</form>


<script src="../js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-transition.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-alert.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-modal.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-dropdown.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-scrollspy.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-tab.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-tooltip.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-popover.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-button.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-collapse.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-carousel.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-typeahead.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-affix.js" type="text/javascript"></script>
<script src="../js/bootstrap/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="../js/jquery/jquery-tablesorter.js" type="text/javascript"></script>
<script src="../js/jquery/jquery-chosen.js" type="text/javascript"></script>
<script src="../js/jquery/virtual-tour.js" type="text/javascript"></script>
</body>
</html>
