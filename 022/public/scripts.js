window.addEventListener("load", function(){
	document.getElementsByTagName("input")[1].addEventListener("click", search);
});

function search(e){
	var movies = [];
	var xhr = new XMLHttpRequest();
	xhr.open("GET", "/results");
	xhr.onload = function(){
		movies = xhr.responseText;
		movies = JSON.parse(movies);
		buildList(movies);
	};
	debugger;
	xhr.send();
	e.preventDefault();
}

function buildList(movies){
	for (i = 0; i < movies.length; i++){
		var movie = movies[i];
		display(movie);
	}
}

function display(movie){
	var newDiv = document.createElement("div");
	var info = newDiv.innerHTML;
	info = "<p>Title: " + movie.Title + "<br>Year: " + movie.Year + "<br>ID: " + movie.imdbID + "<br>Type: " + movie.Type + "<br>Poster: " + movie.poster + "<br>"
	newDiv.innerHTML = info;
	document.getelementsByTagName("body")[0].appendChild(newDiv);
}