from rest_framework.permissions import BasePermission, SAFE_METHODS

class IsAdminOrReadOnly(BasePermission):
  #Allow get/safe_method for everyone
  #Allow create/update/delete for admin only


  def has_permission(self, request, view):
    if request.method in SAFE_METHODS:
      return True
    
    return request.user and request.user.is_staff