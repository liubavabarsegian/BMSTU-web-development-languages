function button_click() {
	text = document.getElementById("text-id");
	var newElem = document.createElement("p");
	document.body.appendChild(newElem);
	newElem.textContent = text.value;
	text.value = "";
}
