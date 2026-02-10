from django.urls import path
from .views import AddToCartView, CartDetailView, RemoveCartItemView

urlpatterns = [
  #post --> http://127.0.0.1:8000/api/carts/add/
  path ('add/',AddToCartView.as_view(),name="add-to-cart"),


  #get cart details ---> http://127.0.0.1:8000/api/carts/
  path ("",CartDetailView.as_view(),name="cart-detail"),


  #delete cart details ---> http://127.0.0.1:8000/api/carts/delete/id
   path ("delete/<int:pk>/",RemoveCartItemView.as_view(),name="remove-cart"),
 
]