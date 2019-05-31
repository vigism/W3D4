require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all

user = User.create([{username: 'Johnnyboy1' }]).first
user1 = User.create([{username: 'usernyboy2' }]).first
user2 = User.create([{username: 'usernyboy3' }]).first
user3 = User.create([{username: 'usernyboy4' }]).first
user4 = User.create([{username: 'usernyboy5' }]).first

poll = Poll.create([{title: 'polltitle', user_id: user.id }]).first
poll1 = Poll.create([{title: 'polltitle1', user_id: user1.id }]).first
poll2 = Poll.create([{title: 'polltitle2', user_id: user2.id }]).first
poll3 = Poll.create([{title: 'polltitle3', user_id: user2.id }]).first
poll4 = Poll.create([{title: 'polltitle4', user_id: user4.id }]).first

question = Question.create([{question_text: 'whats up?', poll_id: poll.id }]).first
question1 = Question.create([{question_text: 'hows it going?', poll_id: poll1.id }]).first
question2 = Question.create([{question_text: 'how was your day?', poll_id: poll2.id }]).first
question3 = Question.create([{question_text: 'where have you been?', poll_id: poll3.id }]).first
question4 = Question.create([{question_text: 'what time is it?', poll_id: poll4.id }]).first


