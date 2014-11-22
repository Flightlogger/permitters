class Ability
  include CanCan::Ability

  def initialize(user)
    role = user.role.to_sym

    if role.eql? :admin
      can :manage, :all
    elsif role.eql? :leader
      can :lead, Employee
    else
      cannot :manage, :all
    end
  end
end
