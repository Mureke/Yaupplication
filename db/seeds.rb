# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Project.new(:name => "Projekti 1", :image => File.new("app/assets/images/IMG_9362.JPG", "r"), :desc => "First Project")
p2 = Project.new(:name => "Projekti 2", :image => File.new("app/assets/images/Skissi.jpg", "r"), :desc => "Second Project")
p3 = Project.new(:name => "Projekti 3", :image =>  File.new("app/assets/images/tyypp.JPG", "r"), :desc => "Third Project")

p1.save
p2.save
p3.save

tony = User.new(:name=>"Tony", :password=>"Salasana")
tony.save

info = Info.new(:text =>
                    "Tony Yau is an industrial designer,
				currently studying design in the Aalto
				University in Helsinki, Finland. His main
				strengths are his knowledge of various
				materials and areas of design. He has
				designed eg. watches, bags, and
				furniture", :email => "tony.yau@gmail.com")

info.save