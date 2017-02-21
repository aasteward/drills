window.addEventListener("load", function(){
	document.getElementsByTagName("input")[1].addEventListener("click", search);
});

var movies = [];
function search(e){
var query = document.getElementsByTagName("input")[0].value;
	var xhr = new XMLHttpRequest();
	xhr.open("GET", "/results?query=" + query);
	xhr.onload = function(){
		document.getElementsByTagName("body")[0] = "";
		movies = xhr.responseText;
		movies = JSON.parse(movies);
		buildList(movies);
	}
	xhr.send();
	e.preventDefault();
}

function buildList(movies){
	for (i = 0; i < movies["Search"].length; i++){
		var movie = movies["Search"][i];
		display(movie);
	}
}

function display(movie){
	var newDiv = document.createElement("div");
	var info = newDiv.innerHTML;
	info = "<p>Title: " + movie.Title + "<br>Year: " + movie.Year + "<br>ID: <a href='http://imdb.com/title/" + movie.imdbID + "/'>" + movie.imdbID + "</a><br>Type: " + movie.Type + "<br>Poster:<br><img src=" + movie.Poster + "></p>"
	newDiv.innerHTML = info;
	document.getElementsByTagName("body")[0].appendChild(newDiv);
}