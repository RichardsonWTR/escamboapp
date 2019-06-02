class AdminPolicy < ApplicationPolicy
  
  # Only admins with full access can register a new admin
  def new?
    @user.full_access?
  end

  # Only admins with full access can change roles
  def edit_role?
    @user.full_access?
  end

  def destroy?
    @user.full_access?
  end
  
  # Provides the parameters for editing an admin
  def permitted_attributes
    if @user.full_access?
      [:email, :password,:password_confirmation, :name,:role]
    else
      [:email, :password,:password_confirmation, :name]
    end
  end

  class Scope < Scope
    # Only admins with full access can see all of the admins
    def resolve
      if @user.full_access?
        scope.all
      else
        scope.with_restricted_access
      end
    end
  end
end
