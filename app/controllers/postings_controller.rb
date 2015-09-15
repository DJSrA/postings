class PostingsController < ApplicationController
  load_and_authorize_resource
  before_action :set_posting, only: [:show, :edit, :update, :destroy]
  # before_action :candidate,   only: :show

  # GET /postings
  # GET /postings.json
  def index
    @recent_companies =  Company.order('updated_at desc').limit(4)
    if current_user.recruiter?
      @postings = current_user.recruiter_postings
    else
      @postings = Posting.order('updated_at desc')

    end
  
  end

  # GET /postings/1
  # GET /postings/1.json
  def show
  end

  # GET /postings/new
  def new
    @posting = current_user.recruiter_postings.build
    @companies = Company.all
  end

  # GET /postings/1/edit
  def edit
  end

  # POST /postings
  # POST /postings.json
  def create
    @recruiter = current_user
    @posting = @recruiter.recruiter_postings.build(posting_params)
    puts "posting #{@posting.inspect}"
    # fail
    respond_to do |format|
      if @posting.save        
        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
        format.json { render :show, status: :created, location: @posting }
      else
        format.html { render :new }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postings/1
  # PATCH/PUT /postings/1.json
  def update
    respond_to do |format|
      if @posting.update(posting_params)
        format.html { redirect_to @posting, notice: 'posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting }
      else
        format.html { render :edit }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.json
  def destroy
    @posting.destroy
    respond_to do |format|
      format.html { redirect_to postings_url, notice: 'posting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting
      @posting = Posting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_params
      params.require(:posting).permit(:recruiter_id, :companies_id, :headline, :job_type, :industry, :region, :market_cap, :ownership, :description, :avatar)

    end

end
