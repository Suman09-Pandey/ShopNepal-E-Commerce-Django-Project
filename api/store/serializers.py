from rest_framework import serializers
from .models import Category,Product

# category serializers
class CategorySerializer(serializers.ModelSerializer):
  class Meta:
    model = Category
    fields = ['id', 'name', 'created_at']

# category serializers
class ProductSerializer(serializers.ModelSerializer):
  category_name = serializers.StringRelatedField(source="category",read_only=True)
  class Meta:
    model = Product
    fields = ['id', 'category', 'title', 'description','created_at','image','price','stock','category_name','slug']