class AddCompletedToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :completed, :timestamp
  end
end
