class CreateStudants < ActiveRecord::Migration
  def change
    create_table :studants do |t|
      t.string :name
      t.date :old
      t.text :description

      t.timestamps null: false
    end
  end
end
