class Exercise < ActiveRecord::Base
  attr_accessible :activity, :units, :value, :user_id, :completed
  belongs_to :user
end
