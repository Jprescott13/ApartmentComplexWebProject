<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
		
		<div class ="homePageSection1">
			
			<a>
				<c:url value="img/TT-Deco3.png" var="backgroundImage" />
				<img id="homePageSection1Background" alt="page Background" src="${backgroundImage}" />
				<c:url value="/img/TT-Night2.png" var="frontPageMainImage" />
				<img id="homePageImg" alt="Page Banner" src="${frontPageMainImage}"/>
				<link href="https://fonts.googleapis.com/css?family=Merriweather|Oswald|PT+Sans+Narrow|Roboto|Lobster|Dosis|Loved+by+the+King" rel="stylesheet">
			</a>
		</div>
		<div class = "homePageSection2">
		<h1 id="homePageSection2Titles"> 
			Life is a Little Nicer at the Top 
		</h1>
		
		<h3 id="homePageSection2description">
			Built in 1931 the renovated in 2016 the historic Landis Trade Building <br>
			has been the centerpiece of downtown commerce for 85 years. <br>
			This icon Art Deco building has long been the home to some of the most <br>
			powerful and successful companies, and now it can be your home to as we <br>
			are proud to announce 13 floors of luxury apartments and residence know as: Tower Top. <br>
			The perfect place to let style and success fill your home.
		</h3>
		
		<h1 id="homePageSection2Titles"> 
			Now Accepting Applications.
		</h1>
		</div>
		
		<div class = "homePageSection3">
			<c:url value="img/TT-Logo3.png" var="residencesAtTT" />
			<img id="homePageSection3Image" alt="ResidencesLogo" src="${residencesAtTT}" />
		
			<p id="homePageSection3border">  </p>
			
			<h4 id="homePageSection3SuperTitle">
			Living with Style
			</h4>
			<h1 id="homePageSection3Titles">
			Tower Top Residences
			</h1>
			<h3 id="homePageSection3Description">
			The Residences at Tower Top are at the cross roads of convinence and luxury. More than a home,
			the residences will inspire the life you live with their breathtaking views, premium in-unit
			amenities, elegant features, and full access to The Signature Hotel's amenities ad Services
			combine to meet and exceed all expectations. 
			
			</h3>	
			<c:url value="/floorPlans" var="floorPlansHref" />
			<button id="homePageSection3Button" type="button"><a href ="${floorPlansHref}"> Learn More</a></button>	
			
		</div>
		
		<div class = "homePageSection4">
		
			<c:url value="img/TT-ApartmentLogo1.png" var="apartmentsAtTT" />
			<img id="homePageSection4Image" alt="ResidencesLogo" src="${apartmentsAtTT}" />
		
			<p id= "HomePageSection4Description"> 
			The Tower Top Apartments are downtown living at its best. The only location where you don't have to 
			compromise luxury and location. City views from every unit, and first class details are designed
			to bring you the sophisticated contemporary lifestyle you demand.  
		
		
		</div>
		
	</body>
</html>