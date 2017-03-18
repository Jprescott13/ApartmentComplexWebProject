<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

	<div class="floorplanSection1">
		<h1> Our Floor Plans </h1>
	</div>
	<div class="floorplanSection2"> 
		<form>			
			<label for = "moveInDate"> Move In Date</label>
			<input type="date" name="bday">		
			<label for="beds">Bedrooms</label>
		    <select id="FormInputs" name="beds">
		    	<option value="Any"> Any</option>
		    	<option value="1">1</option>
		    	<option value="2">2</option>
		    	<option value="3">3</option>
		    </select>
		    <label for="baths">Bathrooms</label>
		    <select id="FormInputs" name="baths">
		    	<option value="Any"> Any</option>
		    	<option value="1">1</option>
		    	<option value="2">2</option>
		    </select>
			<button id="FormInputsSearchButton" type="button">Search</button>
		</form>
	
	</div>

	<div class= "floorplanSection3">
		<button id="Search1BedButton" type="button">1 Bed</button>
		<button id="Search2BedButton" type="button">2 Bed</button>
	
	</div>

	</body>
</html>