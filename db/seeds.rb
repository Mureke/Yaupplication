# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Project.new(:name => "Projekti 1", :path => "app/assets/images/IMG_9362.JPG", :desc => "First Project")
p2 = Project.new(:name => "Projekti 2", :path => "app/assets/images/Skissi.jpg", :desc => "Second Project")
p3 = Project.new(:name => "Projekti 3", :path => "app/assets/images/tyypp.JPG", :desc => "Third Project")

p1.save
p2.save
p3.save