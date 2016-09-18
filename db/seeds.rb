# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == "development"
  User.destroy_all # should destroy all data, as all depend on the User

  # Create Users
  andy = User.create!(email: "andy@mediafinger.com", name: "Andreas Finger")

  # Create Clients
  iron = andy.clients.create!(name: "Ironhack")
  solaris = andy.clients.create!(name: "SolarisBank")

  # Create Projects
  fulltime = iron.projects.create!(user: andy, name: "Fulltime Week 6 October 2016", status: :preparation)
  freelancing = solaris.projects.create!(user: andy, name: "Freelancing 2016", status: :preparation)

  # Create Tasks
  %w(Monday Tuesday Wednesday Thursday Friday).each do |day|
    fulltime.tasks.create!(user: andy, name: day, status: :preparation)
  end

  intro = freelancing.tasks.create!(user: andy, name: "introduction", status: :preparation)

  # Create Instances
  intro.instances.create!(comment: "Fly to Berlin, meet the team, sign a contract")
end
