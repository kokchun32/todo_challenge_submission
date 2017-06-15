require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration[4.2]
  def change
    create_table :tasks do |t|
    	t.string :task
    	t.string :status

        t.timestamps
    end
  end
end