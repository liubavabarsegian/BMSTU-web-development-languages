body = document.getElementsByTagName("body")[0];
btn = document.querySelector(".btn");
result = document.querySelector(".result");

tabs = 0;
show = true;

function writeTree(elem, tabs)
{
	tabs += 1;
	if (elem.hasChildNodes()) {
		
		for (var i = 0; i < elem.children.length; i++) {
			if (elem.children[i].localName != undefined) {
				result.textContent += "        ".repeat(tabs);
				result.textContent += "<" + elem.children[i].localName + ">" + "\n";
				console.log(elem.children[i].localName);
			}
			writeTree(elem.children[i], tabs);
			result.textContent += "        ".repeat(tabs);
			result.textContent += "</" + elem.children[i].localName + ">" + "\n";
			
		}
	}
}

function returnNodeType(type) {
    switch(type) {
        case 3:
            return "Text";
        case 9:
            return "Document";
        case 8:
            return "Comment";
        case 11:
            return "DocumentFragment";
        case 2:
            return "Attr";
    } 
}

btn.addEventListener("click", function(){
	if (show) {
		result.textContent += "<" + body.localName + ">\n" ;
		console.log(body.localName);
		writeTree(body, tabs);
		result.textContent += "<" + body.localName + ">\n";
		console.log(body.localName);
		btn.textContent = "Убрать";
		show = false;
	}
	else {
		result.textContent = "";
		btn.textContent = "Вывести";
		show = true;
	}
})