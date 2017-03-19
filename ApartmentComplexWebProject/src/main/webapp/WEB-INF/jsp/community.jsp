<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

		<div class='container'> 
		<div class='row'></div>
		<div class='col-sm-8'>
			<h2 id="communityPageSection1Titles">
				Building Features & Amenities
			</h2>
			<h3 id= "communityPageSection1Description">
				this place has a pool and other shit
			</h3>
		</div>
		<div class='col-sm-4'>
			<div class='CommunityPageImg'>
				<c:url value="/img/TT-InteriorsFitness.png" var="communityFitness" />
						<img id="CommunityPageImg" alt="Fitness Center" src="${communityFitness}"/>
		
				<c:url value="/img/TT-InteriorsPool.png" var="communityPool" />
						<img id="CommunityPageImg" alt="Swimming Pool" src="${communityPool}"/>
				
				<c:url value="/img/TT-InteriorsLobby1.png" var="communityBuildingLobby" />
						<img id="CommunityPageImg" alt="Lobby Hall" src="${communityBuildingLobby}"/>
			</div>
		</div>
		</div>
		</div>
	</body>
</html>