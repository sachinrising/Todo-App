# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..50).each do |i|
  todo = TodoList.create!(title: "List :#{i}", description: "Description:#{i}")
  (1..10).each do |i|
    TodoItem.create!(content:"Content #{todo.id} : #{i}", todo_list_id: todo.id)
  end
end
