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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Content/css/custo.css"/>
	<%--<link href="${pageContext.request.contextPath}/Content/css/customize-template.css" type="text/css" rel="stylesheet"/>--%>
	<link href="${pageContext.request.contextPath}/Content/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/Content/css/login.css" type="text/css" media="screen, projection"
	      rel="stylesheet"/>
</head>
<body style="background-color:#808989">
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog loginModal">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="text-center">Login</h1>
			</div>
			<div class="modal-body">
				<form action="login" class="form col-md-12 center-block" method="POST">
					<div class="form-group">
						<s:textfield name="name" cssClass="form-control input-lg" placeholder="Username" id="username"/>
					</div>
					<div class="form-group">
						<s:password name="pwd" cssClass="form-control input-lg" placeholder="Password" id="password"/>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block"><span class="glyphicon-lock"></span>
							Sign In
						</button>
					</div>
					<s:if test="hasActionErrors()">
						<div class="alert-message error">
							<p>
								<s:actionerror cssStyle="list-style: none; text-align: center"/>
							</p>
						</div>
					</s:if>
					<s:if test="hasActionMessages()">
						<div class="alert-message success">
							<p>
								<s:actionmessage cssStyle="list-style:none; text-align: center"/>
							</p>
						</div>
					</s:if>
				</form>
			</div>
			<div class="modal-footer">
				<div class="col-md-12 footer">
					<p><b>CopyRights &copy; 2014 EMR | Design : <a rel="nofollow" href="http://www.api-crafttech.com"
					                                               target="_blank">Api-Craft Technology</a></b></p>
				</div>
			</div>
		</div>
	</div>
</div>
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
