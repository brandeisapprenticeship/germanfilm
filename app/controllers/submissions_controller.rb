class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @assignment = Assignment.find(params[:assignment_id])
    @submissions = Submission.where(assignment_id: @assignment.id)
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @comments = Comment.where(submission_id: @submission.id)
    if @submission.grades.empty?
      @grade=@submission.grades.new
    else
      @grade=@submission.grades.first
    end
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
    @assignment = Assignment.find(params[:assignment_id])
  end

  # GET /submissions/1/edit
  def edit
    @assignment = Assignment.find(@submission.assignment_id)
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)
    @submission.audio = submission_params[:audio]
    respond_to do |format|
      if @submission.save
        format.html { redirect_to submissions_path(:assignment_id => submission_params[:assignment_id]), notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submission }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to :controller => 'submissions', :action => 'show', notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mysubmiss
    if (!Submission.where(user_id: current_user.id).empty?)
      @submission = Submission.where(user_id: current_user.id)
      #@bookmark = Bookmark.where(submission_id: @submission.id)
    else 
      @submission = nil
      #@bookmark = nil
    end
    
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
       params.require(:submission).permit(:title, :notecard, 
        :vocab_english_1,:vocab_english_2,:vocab_english_3, :vocab_english_4,:vocab_english_5,:vocab_ger_1,:vocab_ger_2,:vocab_ger_3,:vocab_ger_4,:vocab_ger_5, 
        :name, :audio, :grade, :assignment_id, :user_id)
    end
end
