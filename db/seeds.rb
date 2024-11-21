# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_title|
#     MovieGenre.find_or_create_by!(title: genre_title)
#   end

Project.destroy_all
project = Project.create!(title: 'My Project')

Column.destroy_all
up_next = Column.create!(project:, title: 'Up next')
in_progress = Column.create!(project:, title: 'In progress')
done = Column.create!(project:, title: 'Done')

Task.destroy_all
Task.create!(project:, column: up_next, title: "Do the laundry")
Task.create!(project:, column: up_next, title: "Shop for supper")
Task.create!(project:, column: in_progress, title: "Write turbo-boards POC")
Task.create!(project:, column: done, title: "Catch every possible winter cold")
