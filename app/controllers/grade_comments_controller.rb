class GradeCommentsController < ApplicationController
  before_action :set_grade_comment, only: [:show, :edit, :update, :destroy]

  # GET /grade_comments
  # GET /grade_comments.json
  def index
    @grade_comments = GradeComment.all
  end

  # GET /grade_comments/1
  # GET /grade_comments/1.json
  def show
  end

  # GET /grade_comments/new
  def new
    @grade_comment = GradeComment.new
  end

  # GET /grade_comments/1/edit
  def edit
  end

  # POST /grade_comments
  # POST /grade_comments.json
  def create
    @grade_comment = GradeComment.new(grade_comment_params)

    respond_to do |format|
      if @grade_comment.save
        format.html { redirect_to :back, notice: 'Grade comment was successfully created.' }
        format.json { render :show, status: :created, location: @grade_comment }
      else
        format.html { render :new }
        format.json { render json: @grade_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_comments/1
  # PATCH/PUT /grade_comments/1.json
  def update
    respond_to do |format|
      if @grade_comment.update(grade_comment_params)
        format.html { redirect_to :back, notice: 'Grade comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_comment }
      else
        format.html { render :edit }
        format.json { render json: @grade_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_comments/1
  # DELETE /grade_comments/1.json
  def destroy
    @grade_comment.destroy
    respond_to do |format|
      format.html { redirect_to grade_comments_url, notice: 'Grade comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_comment
      @grade_comment = GradeComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_comment_params
      params.require(:grade_comment).permit(:submission_id, :comment, :user_id)
    end
end
