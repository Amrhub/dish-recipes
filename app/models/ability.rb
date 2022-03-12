class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is? :admin
      can :manage, :all
    else
      user.is? :user
      can :manage, Recipe, user_id: user.id
    end
  end
end
