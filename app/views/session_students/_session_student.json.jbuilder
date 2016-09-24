json.extract! session_student, :id, :name, :start_session, :end_session, :student_id, :status_session, :created_at, :updated_at
json.url session_student_url(session_student, format: :json)