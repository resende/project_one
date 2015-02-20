class Ability
  include CanCan::Ability

  def initialize(user)
    # As we want everyone to be able to view our blog we don't need to set this default user.
    # We don't care about permissions for people who haven't logged in
    alias_action :edit, :update, :delete, :destroy, to: :modify

    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.user?
      can [:create, :edit, :destroy], Track, user_id: user.id
      can [:create, :edit, :destroy], Comment, user_id: user.id
    else
     
    end
    can :read, :all
    can :modify, User, id: user.id
    # can [:new, :create], User
  end
end
    
    # can [:edit, :update], Post, user_id: user.id
    # can [:new, :create], Post


    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  
