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

puts 'Seeding user data'

user1 = User.create(
  first_name: "Samantha",
  last_name: "Wilson",
  user_name: "samwilson89",
  email: "samantha.wilson89@gmail.com",
  password: "123456"
)

fiveyeargoal1 = Fiveyeargoal.create(
  title: "Financial Freedom",
  description: "Save $1 million for retirement by the age of 40",
  category: "Financial",
  done: false,
  vision: "To live comfortably and without financial stress in my retirement years",
  user: user1
)

yearlygoal1 = Yearlygoal.create(
  title: "Maximize Retirement Savings",
  description: "Contribute $100,000 to retirement account this year",
  done: false,
  fiveyeargoal: fiveyeargoal1
)

quarterlygoal1 = Quarterlygoal.create(
  title: "Reduce Monthly Expenses",
  description: "Cut down on eating out and unnecessary shopping",
  done: false,
  yearlygoal: yearlygoal1
)

weeklytodo1 = Weeklytodo.create(
  title: "Cook meals at home",
  description: "Plan and prepare meals for the week on Sunday",
  done: false,
  quarterlygoal: quarterlygoal1
)

weeklytodo2 = Weeklytodo.create(
  title: "Cancel unnecessary subscriptions",
  description: "Review all subscriptions and cancel those that are not needed",
  done: false,
  quarterlygoal: quarterlygoal1
)

weeklytodo3 = Weeklytodo.create(
  title: "Avoid impulsive purchases",
  description: "Think twice before making any purchase and avoid impulse buys",
  done: false,
  quarterlygoal: quarterlygoal1
)

user2 = User.create(
  first_name: "Michael",
  last_name: "Johnson",
  user_name: "mike-johnson22",
  email: "michael.johnson22@gmail.com",
  password: "123456"
)

fiveyeargoal2 = Fiveyeargoal.create(
  title: "Learn a New Skill",
  description: "Become fluent in Spanish within 5 years",
  category: "Personal",
  done: false,
  vision: "To be able to communicate with Spanish-speaking people and experience their culture more fully",
  user: user2
)

yearlygoal2 = Yearlygoal.create(
  title: "Complete Spanish Course",
  description: "Finish a comprehensive online Spanish course",
  done: false,
  fiveyeargoal: fiveyeargoal2
)

quarterlygoal2 = Quarterlygoal.create(
  title: "Practice Speaking",
  description: "Practice speaking Spanish with a tutor or conversation partner",
  done: false,
  yearlygoal: yearlygoal2
)

weeklytodo4 = Weeklytodo.create(
  title: "Schedule Tutor Sessions",
  description: "Schedule regular tutoring sessions with a Spanish tutor",
  done: false,
  quarterlygoal: quarterlygoal2
)

weeklytodo5 = Weeklytodo.create(
  title: "Find Conversation Partner",
  description: "Find a conversation partner to practice speaking Spanish with",
  done: false,
  quarterlygoal: quarterlygoal2
)

weeklytodo6 = Weeklytodo.create(
  title: "Watch Spanish Movies",
  description: "Watch Spanish-language movies or TV shows to improve listening skills",
  done: false,
  quarterlygoal: quarterlygoal2
)

user3 = User.create(
  first_name: "Emily",
  last_name: "Davis",
  user_name: "emily.davis",
  email: "emily.davis33@email.com",
  password: "123456"
)

fiveyeargoal3 = Fiveyeargoal.create(
  title: "Travel the World",
  description: "Visit 30 countries within the next 5 years",
  category: "Personal",
  done: false,
  vision: "To experience different cultures and see the world's natural wonders",
  user: user3
)

yearlygoal3 = Yearlygoal.create(
  title: "Plan and Book Travel",
  description: "Plan and book trips to 6 new countries this year",
  done: false,
  fiveyeargoal: fiveyeargoal3
)

quarterlygoal3 = Quarterlygoal.create(
  title: "Research and Plan Itineraries",
  description: "Research and plan detailed itineraries for each trip",
  done: false,
  yearlygoal: yearlygoal3
)

weeklytodo7 = Weeklytodo.create(
  title: "Research Destinations",
  description: "Research potential travel destinations and attractions",
  done: false,
  quarterlygoal: quarterlygoal3
)

weeklytodo8 = Weeklytodo.create(
  title: "Book Flights and Accommodation",
  description: "Book flights and accommodation for upcoming trips",
  done: false,
  quarterlygoal: quarterlygoal3
)

weeklytodo9 = Weeklytodo.create(
  title: "Create Travel Budget",
  description: "Create a budget for each trip and track expenses",
  done: false,
  quarterlygoal: quarterlygoal3
)

user4 = User.create(
  first_name: "Daniel",
  last_name: "Brown",
  user_name: "danbrown",
  email: "daniel.brown77@email.com",
  password: "123456"
)

fiveyeargoal4 = Fiveyeargoal.create(
  title: "Run a Marathon",
  description: "Complete a full marathon within 5 years",
  category: "Health",
  done: false,
  vision: "To challenge myself physically and achieve a significant accomplishment",
  user: user4
)

yearlygoal4 = Yearlygoal.create(
  title: "Train for Half Marathon",
  description: "Train for and complete a half marathon this year",
  done: false,
  fiveyeargoal: fiveyeargoal4
)

quarterlygoal4 = Quarterlygoal.create(
  title: "Increase Running Endurance",
  description: "Gradually increase running distance and time",
  done: false,
  yearlygoal: yearlygoal4
)

weeklytodo10 = Weeklytodo.create(
  title: "Run 3 Times a Week",
  description: "Run 3 times a week for at least 30 minutes each time",
  done: false,
  quarterlygoal: quarterlygoal4
)

weeklytodo11 = Weeklytodo.create(
  title: "Strength Training",
  description: "Incorporate strength training exercises into running routine",
  done: false,
  quarterlygoal: quarterlygoal4
)

weeklytodo12 = Weeklytodo.create(
  title: "Rest and Recover",
  description: "Take at least one day off each week for rest and recovery",
  done: false,
  quarterlygoal: quarterlygoal4
)

user5 = User.create(
  first_name: "Olivia",
  last_name: "Martinez",
  user_name: "oliviamartinez44",
  email: "olivia.martinez44@email.com",
  password: "123456"
)

fiveyeargoal5 = Fiveyeargoal.create(
  title: "Fitness Journey",
  description: "Complete a triathlon in 5 years",
  category: "Health",
  done: false,
  vision: "To improve overall fitness and achieve a challenging goal",
  user: user5
)

yearlygoal5 = Yearlygoal.create(
  title: "Build Endurance",
  description: "Increase endurance by running a total of 500 miles this year",
  done: false,
  fiveyeargoal: fiveyeargoal5
)

quarterlygoal5 = Quarterlygoal.create(
  title: "Train for 5k",
  description: "Train to run a 5k in 12 weeks",
  done: false,
  yearlygoal: yearlygoal5
)

weeklytodo13 = Weeklytodo.create(
  title: "Run 3 times a week",
  description: "Run for at least 30 minutes, three times a week",
  done: false,
  quarterlygoal: quarterlygoal5
)

weeklytodo14 = Weeklytodo.create(
  title: "Strength Training",
  description: "Incorporate strength training into workout routine",
  done: false,
  quarterlygoal: quarterlygoal5
)

weeklytodo15 = Weeklytodo.create(
  title: "Track Progress",
  description: "Track daily progress using a fitness app or journal",
  done: false,
  quarterlygoal: quarterlygoal5
)

user6 = User.create(
  first_name: "Matthew",
  last_name: "Lee",
  user_name: "matt.lee.99",
  email: "matthew.lee99@email.com",
  password: "123456"
)

fiveyeargoal6 = Fiveyeargoal.create(
  title: "Launch a Startup",
  description: "Start a successful tech company within 5 years",
  category: "Career",
  done: false,
  vision: "To create a company that solves a real-world problem and provides value to its customers",
  user: user6
)

yearlygoal6 = Yearlygoal.create(
  title: "Develop a Business Plan",
  description: "Create a comprehensive business plan for the startup",
  done: false,
  fiveyeargoal: fiveyeargoal6
)

quarterlygoal6 = Quarterlygoal.create(
  title: "Validate the Idea",
  description: "Conduct market research and customer interviews to validate the startup idea",
  done: false,
  yearlygoal: yearlygoal6
)

weeklytodo16 = Weeklytodo.create(
  title: "Research the Competition",
  description: "Analyze the strengths and weaknesses of the competitors in the market",
  done: false,
  quarterlygoal: quarterlygoal6
)

weeklytodo17 = Weeklytodo.create(
  title: "Identify the Target Market",
  description: "Identify the ideal customer profile and their pain points",
  done: false,
  quarterlygoal: quarterlygoal6
)

weeklytodo18 = Weeklytodo.create(
  title: "Refine the Value Proposition",
  description: "Craft a unique value proposition that differentiates the startup from competitors",
  done: false,
  quarterlygoal: quarterlygoal6
)

user7 = User.create(
  first_name: "Jessica",
  last_name: "Rodriguez",
  user_name: "jessrod25",
  email: "jessica.rodriguez25@email.com",
  password: "123456"
)

fiveyeargoal7 = Fiveyeargoal.create(
  title: "Become a Published Author",
  description: "Write and publish a book within the next five years",
  category: "Career",
  done: false,
  vision: "To share my stories and ideas with the world and inspire others",
  user: user7
)

yearlygoal7 = Yearlygoal.create(
  title: "Finish Writing Manuscript",
  description: "Complete the first draft of my book manuscript",
  done: false,
  fiveyeargoal: fiveyeargoal7
)

quarterlygoal7 = Quarterlygoal.create(
  title: "Revise Manuscript",
  description: "Revise and edit the manuscript to improve the plot and characters",
  done: false,
  yearlygoal: yearlygoal7
)

weeklytodo19 = Weeklytodo.create(
  title: "Set Writing Goals",
  description: "Set weekly writing goals and stick to them",
  done: false,
  quarterlygoal: quarterlygoal7
)

weeklytodo20 = Weeklytodo.create(
  title: "Join Writing Group",
  description: "Join a writing group to receive feedback and support",
  done: false,
  quarterlygoal: quarterlygoal7
)

weeklytodo21 = Weeklytodo.create(
  title: "Read Writing Books",
  description: "Read books on writing to improve my craft and get inspired",
  done: false,
  quarterlygoal: quarterlygoal7
)

user8 = User.create(
  first_name: "William",
  last_name: "Wright",
  user_name: "willwright",
  email: "william.wright11@email.com",
  password: "123456"
)

fiveyeargoal8 = Fiveyeargoal.create(
  title: "Write a Book",
  description: "Write and publish a science fiction novel within 5 years",
  category: "Career",
  done: false,
  vision: "To share my creative ideas with the world and establish myself as a published author",
  user: user8
)

yearlygoal8 = Yearlygoal.create(
  title: "Develop Plot and Characters",
  description: "Spend time each week developing the plot and characters for the novel",
  done: false,
  fiveyeargoal: fiveyeargoal8
)

quarterlygoal8 = Quarterlygoal.create(
  title: "Write Chapters",
  description: "Write two chapters of the novel each quarter",
  done: false,
  yearlygoal: yearlygoal8
)

weeklytodo22 = Weeklytodo.create(
  title: "Set Writing Schedule",
  description: "Set a regular writing schedule and stick to it",
  done: false,
  quarterlygoal: quarterlygoal8
)

weeklytodo23 = Weeklytodo.create(
  title: "Research Topics",
  description: "Research topics related to the novel, such as science and technology",
  done: false,
  quarterlygoal: quarterlygoal8
)

weeklytodo24 = Weeklytodo.create(
  title: "Join Writing Group",
  description: "Join a writing group for support and feedback on writing",
  done: false,
  quarterlygoal: quarterlygoal8
)

puts 'Finished!'
