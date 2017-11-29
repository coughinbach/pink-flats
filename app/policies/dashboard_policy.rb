class DashboardPolicy < ApplicationPolicy

  def dashboard?
    true
  end

  class Scope < Scope


    def resolve
      scope.all
    end
  end
end
