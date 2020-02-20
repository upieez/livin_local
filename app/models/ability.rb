class Ability
    include CanCan::Ability
  
    def initialize(user)
        can :create, Place
    
        if user && user.admin?
          can :approval, Place
        end
    end
  end

