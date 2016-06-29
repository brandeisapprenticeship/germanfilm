class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  helper_method :get_submission

  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all.order('deadline desc')
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end
  
  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = Assignment.new(assignment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to assignments_path }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to assignments_path }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url }
      format.json { head :no_content }
    end
  end

  def show_name
    @assignment = Assignment.name
  end
  
  def gradebook
    @users = User.where(admin: false)
    @assignments = Assignment.all
    @submission = Submission.where(assignment_id: @assignment_id)
    @max_assignments = Setting.max_assignments
    @assignment_grades = Array.new
  end
  def comments
    @assignments=Assignment.all
    @assignment = Assignment.find(params[:id] || @assignments.first.id)
    @submissions=Submission.where(assignment_id: @assignment.id)
  end

  def classvocab
    @assignments = Assignment.all.reverse
  end

  def save_gradebook
    params.require(:save_gradebook)
    Setting.max_assignments=params[:save_gradebook][:max_assignments].to_i
    redirect_to assignments_gradebook_path

  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:name, :description, :deadline)
    end
end
