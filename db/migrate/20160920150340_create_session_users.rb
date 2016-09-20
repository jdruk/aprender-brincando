class CreateSessionUsers < ActiveRecord::Migration
  def change
    create_table :session_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
