class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :activity
      t.string :units
      t.float :value

      t.timestamps
    end
  end
end
