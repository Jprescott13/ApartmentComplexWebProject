<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tower Top | Downtown Living</title>
		<c:url value="/css/style.css" var="cssHref" />
		<link rel="stylesheet" type="text/css" href="${cssHref}" >
		
		
		<!-- Latest compiled and minified CSS -->
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- Optional theme -->
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
	</head>
	
	<body>
		<header>
		<div class ="headerBar">
			<!-- Header Image -->
			<c:url value="/img/TT-Logo2b.png" var="headerLogo" />
			<c:url value="/" var="homePageHref"/>
			<a href="${homePageHref}">
				<img id="headerImg" alt="Page Banner" src="${headerLogo}"/>
			</a>
		
			<!-- Header Menus -->
			<c:url value="/floorPlans" var="floorPlansHref" />
			<c:url value="/community" var="communityHref" />
			<c:url value="/residences" var="residencesHref" />
			<c:url value="/neighborhood" var="neighborhoodHref" />
			<c:url value="/contactUs" var="contactUsHref" />
			
			<p class="menuRibbon"> 
				<a href ="${floorPlansHref}"> Floor Plans</a>
			</p>
			<p class="menuRibbon"> 
				<a href ="${residencesHref}"> Residences</a>
			</p>
			<p class="menuRibbon"> 
				<a href ="${communityHref}"> Community</a>
			</p>
			<p class="menuRibbon"> 
				<a href ="${neighborhoodHref}"> Neighborhood</a>
			</p>
			<p class="menuRibbon"> 
				<a href ="${contactUsHref}"> Contact Us</a>
			</p>
			
		</div>
			
			
		</header>
	