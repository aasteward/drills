window.addEventListener("load", function(){
	var likes = document.getElementsByClassName("action--like");
	var unlikes = document.getElementsByClassName("action--unlike");

	for (var i = 0; i < unlikes.length; i++){
		unlikes[i].style.display = "none";
		likes[i].addEventListener("click", like);
		unlikes[i].addEventListener("click", unlike);
	}

	function like(){
		// WHEN 'LIKE' CLICKED, HIDES 'LIKE' ANCHOR, INCREMENTS SIBLING 'LIKE_COUNT' SPAN, AND REVEALS SIBLING 'UNLIKE' ANCHOR.
		this.style.display = "none";
		this.nextElementSibling.style.display = "block";
		var count = this.parentElement.getElementsByClassName('like_count')[0].innerText;
		countarr = count.split(" ");
		countarr[0] = parseInt(countarr[0]) + 1;
		count = countarr.join(" ");
		this.parentElement.getElementsByClassName('like_count')[0].innerText = count;
	}

	function unlike(){
		// WHEN 'UNLIKE' CLICKED, HIDES 'UNLIKE' ANCHOR, DECREMENTS SIBLING 'LIKE_COUNT' SPAN, AND REVEALS SIBLING 'LIKE' ANCHOR.
		this.style.display = "none";
		this.previousElementSibling.style.display = "block";
		var count = this.parentElement.getElementsByClassName('like_count')[0].innerText;
		countarr = count.split(" ");
		countarr[0] = parseInt(countarr[0]) - 1;
		count = countarr.join(" ");
		this.parentElement.getElementsByClassName('like_count')[0].innerText = count;
	}
});