# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Email.delete_all
Task.delete_all

10.times do
    my_task = Task.new(title: Faker::Verb.base + " " + Faker::TvShows::Friends.character + " in " + Faker::TvShows::Friends.location,
                      deadline: Faker::Date.forward(23))
    my_task.save
  end

  10.times do
    my_email = Email.create(object: Faker::TvShows::GameOfThrones.city,
    												body: Faker::TvShows::GameOfThrones.quote, sender: Faker::TvShows::GameOfThrones.character)
    end
