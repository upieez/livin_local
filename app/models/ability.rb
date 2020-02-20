class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Place

    if user && user.admin?
      can :approve, Place
    end
  end
end