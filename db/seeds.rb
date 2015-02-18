# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


Todo.create(:title =>  "Wash dishes")
Todo.create(:title =>  "Visit dentist on Monday", :notes =>  "Scheduled time is 9am.")
Todo.create(:title =>  "Call bank about transfer", :notes =>  "It's been  3 days and transfer hasn't been done.")
Todo.create(:title =>  "Watch football", :notes =>  "If we lose again, the manager might get sacked!")
Todo.create(:title =>  "Register for new Tealeaf course")