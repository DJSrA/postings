class Ability
  include CanCan::Ability

  def initialize(user)
    case user.role
    when "candidate"
        can :read, Posting
        can :manage, Interest, candidate_id: user.id
    when "recruiter"
        can :read, Posting
        can :manage, Posting, recruiter_id: user.id
        can :create, Company
    when "admin"
        can :manage, :all
    end
  end
end
