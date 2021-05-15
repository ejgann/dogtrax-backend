# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# DOG
pebbles = Dog.create(name: "Pebbles", age: 2, gender: "F", breed: "Labrador Retriever", notes: "Loves squirrels")
theo = Dog.create(name: "Theo", age: 9, gender: "M", breed: "Mixed", notes: "Should not be on furniture")
wilma = Dog.create(name: "Wilma", age: 10, gender: "F", breed: "Golden Retriever mix", notes: "Has some separation anxiety")
gus = Dog.create(name: "Gus", age: 5, gender: "M", breed: "Dachshund mix", notes: "Likes to eat things on walks")
ranger = Dog.create(name: "Ranger", age: 4, gender: "M", breed: "Chihuahua mix", notes: "Very easygoing; doesn't like kids")
scout = Dog.create(name: "Scout", age: 5, gender: "F", breed: "Pomeranian mix", notes: "Aggressive toward other dogs")


# REPORT
r1 = Report.create(date: Date.current, pee: true, poop: false, comments: "Pebbles had a great walk today.", dog_id: 1)
r2 = Report.create(date: Date.current, pee: true, poop: true, comments: "Theo did not like getting out in the rain today.", dog_id: 2)
r3 = Report.create(date: Date.current, pee: true, poop: false, comments: "Wilma barked at several other dogs on our walk today.", dog_id: 3)
r4 = Report.create(date: Date.current, pee: true, poop: true, comments: "Gus had a great walk today.", dog_id: 4)
r5 = Report.create(date: Date.current, pee: true, poop: false, comments: "Ranger got right down to business as soon as we stepped outside. Because of the weather, he was eager to get back in, too.", dog_id: 5)
r6 = Report.create(date: Date.current, pee: true, poop: false, comments: "Scout was her usual firecracker self today. She barked at every dog we met along our route.", dog_id: 6)