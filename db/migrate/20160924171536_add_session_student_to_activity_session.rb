class AddSessionStudentToActivitySession < ActiveRecord::Migration
  def change
    add_reference :activity_sessions, :session_student, index: true, foreign_key: true
  end
end
