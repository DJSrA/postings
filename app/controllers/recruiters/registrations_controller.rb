class Recruiters::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      resource.role = "recruiter"
      resource.save
    end
  end
end
