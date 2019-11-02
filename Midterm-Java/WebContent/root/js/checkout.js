
$(document).ready(function() {
	$(".product-total-price").text(''+getTotalPrice());
	let max = localStorage.length;
	for (let i = 0; i < max; ++i) {
	    var key = localStorage.key(i);
	    if (key.charAt(0) == 'c' && key.charAt(1) == 'a') {
	    		let obj = JSON.parse(localStorage.getItem(key));

				let totalPrice = Math.round(obj.quantity * obj.price * 100) / 100;
				let views = `
					<tr class="cart_item">
						<td class="product-name">
							${obj.name}<strong class="product-quantity"> x ${obj.quantity} </strong>
						</td>
						<td class="product-total">
							<span class="amount">${obj.price}</span>
						</td>
					</tr>
				`;
				$('.append-order-table').append(views);
			}
	}
	$(".append-order-footer").append(`
				<tr class="cart-subtotal">
					<th>Tổng số lượng</th>
					<td><span class="amount">${getTotalQuantity()}</span></td>
				</tr>
				<tr class="shipping">
					<th>Shipping</th>
					<td>
						<ul>
							<li>
								<input type="radio" checked>
								<label>Free Shipping:</label>
							</li>
							<li></li>
						</ul>
					</td>
				</tr>
				<tr class="order-total">
					<th>Tổng tiền</th>
					<td><strong><span class="amount">${getTotalPrice()}</span></strong>
					</td>
				</tr>
	`);
});
