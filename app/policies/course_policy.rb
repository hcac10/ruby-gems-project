class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def edit?
    # unsure of what to use to do disparity between lesson and git
    # logging out with line below causes error
    @user.has_role?(:admin) || @record.user_id == @user.id
  end

  def update?
    @user.has_role?(:admin) || @record.user = @user
  end

  def new?
    @user.has_role?(:teacher)
  end

  def create?
    @user.has_role?(:teacher)
  end

  def destroy?
    @user.has_role?(:admin) || @record.user = @user
  end
  
end
