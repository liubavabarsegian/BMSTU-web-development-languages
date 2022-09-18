tableMenu = document.getElementById("table-menu");
tableBasket = document.getElementById("table-basket");
btnElement = document.getElementById("add-btn");
nameInput = document.querySelector(".name__input");
priceInput = document.querySelector(".price__input");
tableBasketBackground = document.querySelector(".shopping-cart");

countBasketGoods = 0;
countAlready = false;

btnElement.addEventListener( "click", function(){
	var goodsName = nameInput.value;
	var goodsPrice = priceInput.value;
	if (goodsName == '' || goodsPrice == '') {
		alert('Введите все данные!');
		nameInput.value = "";
		priceInput.value = "";
	}
	else
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
	cell.setAttribute("data-name", goodsName);
	cell.setAttribute("data-value", goodsPrice);

	nameInput.value = "";
	priceInput.value = "";

	rowClick();
}
function rowClick() {
    var rows = document.getElementById("table-menu").rows;
    for (i = 1; i < rows.length; i++) {
        rows[i].onclick = function(){
			var value = this.cells[2].getAttribute("data-value");
			var name = this.cells[2].getAttribute("data-name");
			addToBasket(name, value);
        };
    }
}

function addToBasket(name, price) {
	countBasketGoods += 1;

	var row = tableBasket.insertRow();
	var cell = row.insertCell(0);
	cell.innerHTML = countBasketGoods;
	var cell = row.insertCell(1);
	cell.innerHTML = name;
	cell.setAttribute("data-name", name);
	cell = row.insertCell(2);
	cell.setAttribute("data-value", price);
	cell.innerHTML = price + " руб.";

	tableBasketBackground.querySelector("p").textContent = "";
	tableBasketBackground.querySelectorAll("p")[1].textContent = "";

}

window.onload = rowClick();

function clearBusket() {
	var rows = document.getElementById("table-basket").rows;
    for (i = rows.length - 1; i >= 0; i--) {
        rows[i].remove();
    }
	tableBasketBackground.querySelector("p").textContent = "Корзина пуста:( Вы пока ничего не добавили!";
	countBasketGoods = 0;
	tableBasketBackground.querySelectorAll("p")[1].textContent = "";
	countBasketGoods = 0;
}

function countTotalCost() {
	totalSum = 0;
	var rows = document.getElementById("table-basket").rows;
    for (i = 0; i < rows.length; i++) {
        var price = parseInt(rows[i].cells[2].getAttribute("data-value"));
		totalSum += price;
    }
	if (countBasketGoods == 0) {
		
	}
	else if (!countAlready) {
		result = document.createElement("p");
		tableBasketBackground.appendChild(result);
		result.textContent = "Итого: " + totalSum + " руб.";
		countAlready = true;
	}
	else {
		result.textContent = "Итого: " + totalSum + " руб.";
	}
}


