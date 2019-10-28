
// add to Cart
function addToCart(id, name, price, image, quantity) {
	obj = {
	    id        : id,
	    name      : name,
	    price     : price,
	    quantity  : quantity,
	    image     : image
	}
	obj = JSON.stringify(obj);
	var count_obj = 0;

	let max = localStorage.length;
	for(let i =0; i < max; ++i){
		var key = localStorage.key(i);
		if(key == ('ca-' + id)) {
			count_obj ++;
		}
	}
	
	if (count_obj < 1){
	    localStorage.setItem('ca-' + id, obj);
	} 
	else {
	    editQuantityProduct('ca-' + id, quantity);
	}
	
	if (getTotalQuantity() > 9) {
	    $('.quantity-product').text('9+');
	} else {
	    $('.quantity-product').text(getTotalQuantity());
	}
	$(".product-total-price").text(''+getTotalPrice());
	//checkStatusCartIcon();
	Swal.fire('Success!','added item.','success');
	
}

// edit quantity of a book.
function editQuantityProduct(key, quantity = 1) {
	let obj = JSON.parse(localStorage.getItem(key));
	obj.quantity += quantity;
	obj = JSON.stringify(obj);
	localStorage.setItem(key, obj);
}

//get quantity of all book.
function getTotalQuantity() {
    var result = 0;
    let max = localStorage.length;
    for (let i = 0; i < max; ++i) {
        var key = localStorage.key(i);
        if (key.charAt(0) == 'c' && key.charAt(1) == 'a') {
            let obj = JSON.parse(localStorage.getItem(key));
            result += obj.quantity;
        }
    }
    return Number(result);
}

//display quantity book for icon cart in top page.
function checkStatusCartIcon() {
    let quantity = getTotalQuantity();
    if (quantity < 1) {
        $('.quantity-product').hide();
    } else if (quantity > 9) {
        $('.quantity-product').text('9+');
    } else {
        $('.quantity-product').text(quantity);
    }
    $(".product-total-price").text(''+getTotalPrice());
}

// change quantity for book.
function subQuantity() {
    let tmp = $('.box-quantity').val();
    if (tmp <= 1) {
        return;
    } else {
        $('.box-quantity').val(tmp - 1);
    }
}

function addQuantity() {
    let tmp = $('.box-quantity').val();
    let max = $('.sum-quantity').text();
    if (tmp >= Number(max)) {
        return
    } else {
        $('.box-quantity').val(Number(tmp) + 1);
    }
}
