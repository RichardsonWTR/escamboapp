class AdminPolicy < ApplicationPolicy
  
  # Only admins with full access can register a new admin
  def new?
    @user.full_access?
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
