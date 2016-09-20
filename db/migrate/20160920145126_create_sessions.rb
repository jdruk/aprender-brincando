class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.datetime :start_session
      t.datetime :end_session
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
