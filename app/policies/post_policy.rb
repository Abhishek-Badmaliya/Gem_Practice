class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      if @user.has_role? :admin
        scope.all
      else
        scope.where(content: "")
      end
    end
  end

  def index?
    true #everyone can access the index page
    #false nobody can access
  end

end
