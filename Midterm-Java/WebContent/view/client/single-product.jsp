<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@page import="com.java.model.client.BookModel"%>
<% BookModel book=(BookModel)request.getAttribute("book"); %>
<div class="row">
    <div class="col-md-5 col-sm-5 col-xs-12">
        <div class="modal-tab">
            <div class="product-details-large tab-content">
                <div class="tab-pane active" id="image-1">
                    <img src="${pageContext.request.contextPath}/images/<%= book.image %>" alt="" />
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-7 col-sm-7 col-xs-12">
        <div class="modal-pro-content" style="">
            <h3 style="width:505px;"><%= book.bookName %></h3>
            <div class="price">
                <span><%= book.price %> VND</span>
            </div>
            <div style="overflow-y: scroll; height: 250px; width:500px;margin-right:-1000px	">
            <%= book.description %>
            </div>
            <hr/>
            <form>
                <input type="number" class="add-quantity" min="1" value="1" />
                <button type="button" onclick="addToCart(<%= book.bookID %>, '<%= book.bookName %>', <%= book.price %>, '${pageContext.request.contextPath}/images/<%= book.image %>', Number($('.add-quantity').val()));">Add to cart</button>
            </form>
        </div>
    </div>
</div>