class SessionStudentsController < ApplicationController
  before_action :set_session_student, only: [:show, :edit, :update, :destroy]
  layout 'teamvision'
  
  # GET /session_students
  # GET /session_students.json
  def index
    @session_students = SessionStudent.all
  end

  # GET /session_students/1
  # GET /session_students/1.json
  def show
  end

  # GET /session_students/new
  def new
    @session_student = SessionStudent.new
  end

  # GET /session_students/1/edit
  def edit
  end

  # POST /session_students
  # POST /session_students.json
  def create
    @session_student = SessionStudent.new(session_student_params)

    respond_to do |format|
      if @session_student.save
        format.html { redirect_to @session_student, notice: 'Session student was successfully created.' }
        format.json { render :show, status: :created, location: @session_student }
      else
        format.html { render :new }
        format.json { render json: @session_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_students/1
  # PATCH/PUT /session_students/1.json
  def update
    respond_to do |format|
      if @session_student.update(session_student_params)
        format.html { redirect_to @session_student, notice: 'Session student was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_student }
      else
        format.html { render :edit }
        format.json { render json: @session_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_students/1
  # DELETE /session_students/1.json
  def destroy
    @session_student.destroy
    respond_to do |format|
      format.html { redirect_to session_students_url, notice: 'Session student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_student
      @session_student = SessionStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_student_params
      params.require(:session_student).permit(:name, :start_session, :end_session, :student_id, :status_session, activity_ids: [])
    end
end
