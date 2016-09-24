require 'test_helper'

class SessionStudentsControllerTest < ActionController::TestCase
  setup do
    @session_student = session_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_student" do
    assert_difference('SessionStudent.count') do
      post :create, session_student: { end_session: @session_student.end_session, name: @session_student.name, start_session: @session_student.start_session, status_session: @session_student.status_session, student_id: @session_student.student_id }
    end

    assert_redirected_to session_student_path(assigns(:session_student))
  end

  test "should show session_student" do
    get :show, id: @session_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_student
    assert_response :success
  end

  test "should update session_student" do
    patch :update, id: @session_student, session_student: { end_session: @session_student.end_session, name: @session_student.name, start_session: @session_student.start_session, status_session: @session_student.status_session, student_id: @session_student.student_id }
    assert_redirected_to session_student_path(assigns(:session_student))
  end

  test "should destroy session_student" do
    assert_difference('SessionStudent.count', -1) do
      delete :destroy, id: @session_student
    end

    assert_redirected_to session_students_path
  end
end
