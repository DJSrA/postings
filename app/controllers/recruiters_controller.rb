class RecruitersController < ApplicationController

  def index
    @recruiters = User.where(role: "recruiter")
    # @posts = @recruiters.recruiter_postings
    puts "posting #{@recruiters.inspect}"
    # fail

    # @posts = @recruiters.postings
  end

  def show
  end

end
