# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:


categories = ['Chinese', 'Mexican', 'Thai', 'American', 'French', 'Italian', 'Germans' ]

Category.delete_all 

categories.each do |category|
  Category.create(name: category)
end