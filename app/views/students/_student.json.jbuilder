json.extract! student, :id, :name, :old, :description, :created_at, :updated_at
json.url student_url(student, format: :json)