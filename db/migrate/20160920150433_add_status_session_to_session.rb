class AddStatusSessionToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :status_session, :integer
  end
end
