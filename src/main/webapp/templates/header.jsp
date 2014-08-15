<%--
  ~ /*
  ~  * The contents of this file are subject to the Api-Craft Technology License
  ~  * Version 1.0 (the "License"); you may not use this file except in
  ~  * compliance with the License. You may obtain a copy of the License at
  ~  * http://api-crafttech.com
  ~  *
  ~  * Copyright (C) Api-Craft Technology. All Rights Reserved. 2014
  ~  */
  --%>

<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 8/6/14
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="utf-8" http-equiv="CONTENT-TYPE" content="text/html">
	<title>DMS | <%%></title>
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/flat-ui.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/bootstrap-docs.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/bootstrap-responsive.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/prettify.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css" charset="utf-8">
	<script href="<c:url value="/resources/js/html5shiv.js" />s" rel="stylesheet" type="text/css" charset="utf-8"></script>
	<script href="<c:url value="/resources/js/respond.min.js" />" rel="stylesheet" type="text/css" charset="utf-8"></script>

</head>
<body>
<!-- Fixed navbar -->
<div class="navbar navbar-collapse navbar-fixed-top" role="navigation" id="navbar">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Errand-Boy</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href='<?php echo base_url() . "user/"; ?>'><span class="glyphicon glyphicon-lock"></span> Sign In</a>
				</li>
				<li><a href='<?php echo base_url() . "user/Signup"; ?>'><span class="glyphicon glyphicon-user"></span> Sign
					Up</a></li>
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span
							class="glyphicon glyphicon-info-sign"></span> FAQ<b class="caret"></b></a>
					<span class="dropdown-arrow"></span>
					<ul class="dropdown-menu">
						<li><a href="#">Why use Errand-Boy?</a></li>
						<li><a href="#">How to make an order</a></li>
						<li><a href="#">Term &amp; Conditions</a></li>
						<li class="divider"></li>
						<li><a href="#">Contact Online Help <span class="glyphicon glyphicon glyphicon-phone-alt"></span></a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>


