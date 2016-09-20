class AddFunctionToUser < ActiveRecord::Migration
  def change
    add_reference :users, :function, index: true, foreign_key: true
  end
end
