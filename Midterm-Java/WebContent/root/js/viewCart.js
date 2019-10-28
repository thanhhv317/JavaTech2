
$(document).ready(function() {
	checkStatusCartIcon();
	var status = Number($('.quantity-product').text());
	showText();
	if (status > 0 || isNaN(status)){
		let max = localStorage.length;
		for (let i = 0; i < max; ++i) {
		    var key = localStorage.key(i);
		    if (key.charAt(0) == 'c' && key.charAt(1) == 'a') {
		    		let obj = JSON.parse(localStorage.getItem(key));

					let totalPrice = Math.round(obj.quantity * obj.price * 100) / 100;
					let views = `
						<tr class="list-cart-product product-${obj.id}">
						<td>
							<div>
							<img src="${obj.image}" alt="..." class="img-thumbnail cart-product-image">
							</div>
						</td>
						<td>${obj.name}</td>
						<td class="product-price"><span class="amount">${obj.price} VND</span></td>
						<td>
							<div>
							<button type="button" class="btn btn-outline-info sub-quantity" onclick="editQuantity(${obj.id}, 0)">-</button>
								<input class="box-quantity quantity-${obj.id}" type="text" name="quantity" value="${obj.quantity}" >
							<button type="button" class="btn btn-outline-info add-quantity" onclick="editQuantity(${obj.id}, 1)">+</button>
							</div>
						</td>
						<td class="product-subtotal"><b class="total-price-${obj.id}">${totalPrice}</b> VND</td>
						<td class="product-remove"><a class="del-product delete-product-${obj.id}" onclick="deleteProduct(${obj.id})"><i class="fa fa-times"></i></a></td>
					</tr>
					`;
					$('.append-product').append(views);
				}
		}
	}
	$('.btn-clear-cart').click(function(event) {
	    Swal.fire('Success!','deleted all item.','success');
	  	localStorage.clear();
	  	$('.append-product').hide(1000);
	  	$('.total-quantity-all-product').text(0);
	    $('.total-price-all-product').text(0);
	    $('.delivery-cost').text(0);
	    checkStatusCartIcon();
	    showText();
    });
});



// edit quantity for book in cart page. about : sub (-) and add (+)
function editQuantity(id, flag = 0) {
    let item = localStorage.getItem('ca-' + id);
    item = $.parseJSON(item);
    if (flag == 0) {
        // sub
        if (item.quantity > 1) {
            item.quantity--;
        }
    } else {
        item.quantity++;
    }
    $(".quantity-" + id).val(item.quantity);
    $(".total-price-" + id).text(Math.round(item.quantity * item.price * 100) / 100);
    item = JSON.stringify(item);
    localStorage.setItem('ca-' + id, item);
    checkStatusCartIcon();
    showText();
    
}

// delete book
function deleteProduct(id) {
    localStorage.removeItem('ca-' + id);
    checkStatusCartIcon();
    $('.product-' + id).hide(1000);
    Swal.fire(
        'Success!',
        'delete item.',
        'success'
    );
}

function showText(){
	$('.total-quantity-all-product').text(getTotalQuantity());
  	$('.total-price-all-product').text(getTotalPrice());
}

// get total for checkout
function getTotalPrice() {
    var result = 0;
    let max = localStorage.length;
    for (let i = 0; i < max; ++i) {
        var key = localStorage.key(i);
        if (key.charAt(0) == 'c' && key.charAt(1) == 'a') {
            let obj = JSON.parse(localStorage.getItem(key));
            result += (obj.quantity * obj.price);
        }
    }
    return Math.round(result * 100) / 100;
}

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