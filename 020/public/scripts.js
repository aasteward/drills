window.addEventListener("load", function(){
	// IMPORT JSON TO VAR 'POPULATION'
	var population = [];
	var xhr = new XMLHttpRequest();
	xhr.open("GET", "/people");
	xhr.onload = function(){
		population = xhr.responseText;
		population = JSON.parse(population);
		personList(population);
	}
	xhr.send();

	// GATHER DATA FOR EACH PERSON IN JSON
	function personList(population){
		for (i = 0; i < population.length; i++){
			var person = population[i];
			personData(person);
		}
	}

	// BUILD DIV AND APPEND TO HTML
	function personData(person){
		var newDiv = document.createElement("div");
		var info = newDiv.innerHTML;
		info = "First Name: " + person.fname + "<br>" + "Last Name: " + person.lname + "<br>" + "Phone: " + person.tel + "<br>" + "Address: " + person.address + "<br>" + "City: " + person.city + "<br>" + "State: " + person.state + "<br>" + "ZIP: " + person.zip + "<br><br>";
		newDiv.innerHTML = info;
		document.getElementsByTagName("body")[0].appendChild(newDiv);
	}

});