class CreateSessionStudents < ActiveRecord::Migration
  def change
    create_table :session_students do |t|
      t.string :name
      t.datetime :start_session
      t.datetime :end_session
      t.references :student, index: true, foreign_key: true
      t.integer :status_session, default: 0

      t.timestamps null: false
    end
  end
end
