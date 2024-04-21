class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :read, Patient if user.doctor?

    return unless user.receptionist?

    can :manage, Patient
  end
end
