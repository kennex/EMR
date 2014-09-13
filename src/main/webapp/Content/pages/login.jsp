<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>EMR | LOGIN</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="layout" content="main"/>

	<script type="text/javascript" src="${pageContext.request.contextPath}/Content/js/jsapi.js"></script>
	<script src="${pageContext.request.contextPath}/Content/js/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Content/css/custo.css">
	<link href="${pageContext.request.contextPath}/Content/css/customize-template.css" type="text/css"
	      media="screen, projection" rel="stylesheet"/>
</head>
</head>
<body style="background-color:grey">

<form action="login" id="loginfom" class="form-inline logform" method="POST">
	<h2>Login</h2>
	<p>
	<div class="input-prepend">
	<span class="add-on"><b>Username</b></span>
	<s:textfield name="name" cssClass="span4"/>
	</div>
	</p>
	<p>
	<div class="input-prepend">
	<span class="add-on"><b>Password</b></span>
	<s:password name="pwd" cssClass="span4"/>
</div>
	</p>
	<button type="submit" class="btn btn-primary" id="submit">Login</button>
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
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-transition.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-alert.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-modal.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-dropdown.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-scrollspy.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-tab.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-tooltip.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-popover.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-button.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-collapse.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-carousel.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-typeahead.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-affix.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/bootstrap/bootstrap-datepicker.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/jquery/jquery-tablesorter.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/jquery/jquery-chosen.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Content/js/jquery/virtual-tour.js" type="text/javascript"></script>
</body>
</html>
