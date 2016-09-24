class Activity < ActiveRecord::Base
	has_many :activity_sessions
	has_many :session_students, through: :activity_sessions
end
