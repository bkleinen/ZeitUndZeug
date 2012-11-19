# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.delete_all
Project.create(title: 'Ruby Tuesday Rock Camp',
  description: 
    %{Rock Camp for Girls, Trans* and Inter*},
  image_url:   'ruby.png',    
  start_date: 2012-10-23)
# . . .
Project.create(title: 'The room behind the window',
  description:
    %{Project building miniture rooms and landscapes which you can explore by looking through a hole in a shaded window.},
  image_url: 'lorinix.png',
  start_date: 2012-11-03)
# . . .

Project.create(title: 'Zeit und Zeug',
  description: 
    %{Tauschring fuer soziale, politische und kreative Projekte},
  image_url: 'zuz.png',
  start_date: 2012-11-04) 
# . . .

Project.create(title: 'Blinksies - LED Street Art Project',
  description: 
  %{Create LED images from TV Series, Movies and everything you could imaging.},
  image_url: 'blinksies.png',
  start_date: 2012-11-04)