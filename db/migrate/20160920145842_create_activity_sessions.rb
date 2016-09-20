class CreateActivitySessions < ActiveRecord::Migration
  def change
    create_table :activity_sessions do |t|
      t.references :activity, index: true, foreign_key: true
      t.references :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
