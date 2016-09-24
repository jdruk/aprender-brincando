class SessionStudent < ActiveRecord::Base
  belongs_to :student
  has_many :activity_sessions
  has_many :activities, through: :activity_sessions

  def self.session_progress_count
  	SessionStudent.where( status_session: 1).count
  end
end
