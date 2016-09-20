json.extract! session, :id, :name, :start_session, :end_session, :student_id, :created_at, :updated_at
json.url session_url(session, format: :json)