class ExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end
  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    owner_or_admin
  end

  def update?
    owner_or_admin
  end

  def destroy?
    user.admin
  end

  def owner_or_admin
    record.user == user || user.admin
  end
end
