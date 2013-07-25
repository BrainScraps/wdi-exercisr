class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :password_confirmation

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  has_many :exercises


  def list_exercises
  
  	result = []
   if self.exercises.count > 1
     
     self.exercises.each do |x|

  	  result << x.activity

  	 end
  	end
  	result.uniq!
  end


end