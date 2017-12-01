class BookingPolicy < ApplicationPolicy

  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def dashboard?
    true
  end

  def accept?
    record.flat.user == user
  end

  def decline?
    record.flat.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
