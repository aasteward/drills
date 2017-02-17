var population = [];
window.addEventListener("load", function(){
	// IMPORT JSON TO VAR 'POPULATION'
	// var population = [];
	var xhr = new XMLHttpRequest();
	xhr.open("GET", "/people");
	xhr.onload = function(){
		population = xhr.responseText;
		population = JSON.parse(population);
	}
	xhr.send();
	console.log(population);

	// GATHER DATA FOR EACH PERSON IN JSON
	for (i = 0; i < population.length; i++){
		var ID = population[i];
		personData(ID);
	}

	// BUILD DIV ELEMENT AND APPEND TO HTML
	function personData(p){
		var newDiv = document.createElement("div");
		// DIV BUILDING GOES HERE
		
		document.getElementsByTagName("body")[0].appendChild(newDiv);
	}

	// MAYBE NOT NECESSARY??
	// function personList(){

	// }


	// TEST CODE TO BUILD DIV ON PAGE
// var mydiv = document.createElement('div');
// mydiv.style.width = "100px";
// mydiv.style.height = "100px";
// mydiv.style.background = "red";
// mydiv.style.color = "white";
// mydiv.innerHTML = "Hello";
// document.getElementsByTagName("body")[0].appendChild(mydiv);
});