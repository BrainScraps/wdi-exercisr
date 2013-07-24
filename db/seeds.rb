# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

12.times do |n| 
  u = User.create(email: "user#{n}@user.com", password: "password", password_confirmation: "password")

  5.times do |x|
    u.exercises.create(activity: "running", units: "miles", value: x, completed: Time.now)
  end

end