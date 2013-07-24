class Stupidname < ActiveRecord::Migration
  def up
  		add_column :exercises, :user_id, :integer
  end

  def down
  end
end
