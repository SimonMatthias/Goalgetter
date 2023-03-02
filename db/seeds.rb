# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Weeklytodo.destroy_all
Quarterlygoal.destroy_all
Yearlygoal.destroy_all
Fiveyeargoal.destroy_all
User.destroy_all

puts 'Creating 10 fake users with goals and todos'
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.username(specifier: 10),
    email: Faker::Internet.email,
    password: "123456"
  )
  user.save!

  fiveyeargoal = Fiveyeargoal.new(
    title: Faker::Science.element,
    description: Faker::Quote.famous_last_words,
    category: Faker::Science.element_state,
    done: false,
    user: user
  )
  fiveyeargoal.save!

  yearlygoal = Yearlygoal.new(
    title: Faker::Space.constellation,
    description: Faker::Quote.famous_last_words,
    done: false,
    fiveyeargoal: fiveyeargoal
  )
  yearlygoal.save!

  quarterlygoal = Quarterlygoal.new(
    title: Faker::Space.galaxy,
    description: Faker::Quote.famous_last_words,
    done: false,
    yearlygoal: yearlygoal
  )
  quarterlygoal.save!

  weeklytodo = Weeklytodo.new(
    title: Faker::Mountain.name,
    description: Faker::Quote.famous_last_words,
    done: false,
    quarterlygoal: quarterlygoal
  )
  weeklytodo.save!
end

puts 'Finished!'
