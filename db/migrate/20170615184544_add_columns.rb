require_relative '../../config/application'

class AddColumns < ActiveRecord::Migration[4.2]
  def change
    add_column :tasks, :no, :interger    
  end
end