class ActivitySession < ActiveRecord::Base
  belongs_to :activity
  belongs_to :session_student
end
