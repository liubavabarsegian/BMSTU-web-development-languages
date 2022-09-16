tableMenu = document.getElementById("table-menu");
btnElement = document.querySelector(".btn");
nameInput = document.querySelector(".name__input");
priceInput = document.querySelector(".price__input");

btnElement.addEventListener( "click", function(){
	var goodsName = nameInput.value;
	var goodsPrice = priceInput.value;
	addRow(goodsName, goodsPrice);
});

function addRow(goodsName, goodsPrice) {

	var row = tableMenu.insertRow();
	var cell = row.insertCell(0);

	cell.innerHTML = "<img src = '../images/users_pizza.jpg' alt = 'user's pizza' style = 'height:100px'>";
	cell = row.insertCell(1);
	cell.innerHTML = goodsName;
	cell = row.insertCell(2);
	cell.innerHTML = goodsPrice + " руб.";

	nameInput.value = "";
	priceInput.value = "";
}
// function rowClick() {
//     var rows = document.getElementById("table-menu").rows;
//     for (i = 0; i < rows.length; i++) {
//         rows[i].onclick = function(){ return function(){
//             	var value = this.cells[2].innerHTML.value;
//             	alert("id:" + value);
//         };}(rows[i]);
//     }
// }
// window.onload = rowClick();

