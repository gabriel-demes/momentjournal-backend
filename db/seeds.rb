# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Gabriel Demes", username:"gabe", password: "abc123", code: Randomstring.generate(6))
User.create(name: "Max Beneke", username:"max", password: "abc123", code: Randomstring.generate(6))
User.create(name: "Matt Aquino", username:"matt", password: "abc123", code: Randomstring.generate(6))

Journal.create(title: "Janurary Journal", user_id: 1)
Journal.create(title: "February Journal", user_id: 1)
Journal.create(title: "March Journal", user_id: 1)
Journal.create(title: "April Journal", user_id: 1)
Journal.create(title: "May Journal", user_id: 1)
Journal.create(title: "June Journal", user_id: 1)
Journal.create(title: "July Journal", user_id: 1)
Journal.create(title: "First Journal", user_id: 2)
Journal.create(title: "Second Journal", user_id: 2)
Journal.create(title: "Work Journal", user_id: 2)
Journal.create(title: "Vacation Journal", user_id: 2)
Journal.create(title: "Travel Journal", user_id: 2)
Journal.create(title: "Workout Journal", user_id: 2)
Journal.create(title: "Janurary Journal", user_id: 2)
Journal.create(title: "Feburary Journal", user_id: 2)
Journal.create(title: "First Journal", user_id: 3)
Journal.create(title: "Second Journal", user_id: 3)
Journal.create(title: "Work Journal", user_id: 3)
Journal.create(title: "Vacation Journal", user_id: 3)
Journal.create(title: "Travel Journal", user_id: 3)
Journal.create(title: "Workout Journal", user_id: 3)
Journal.create(title: "Janurary Journal", user_id: 3)
Journal.create(title: "Feburary Journal", user_id: 3)


Entry.create(journal_id: 1, title: "My first Entry", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,10) )

Entry.create(journal_id: 1,  title: "2nd Entry", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,11))

Entry.create(journal_id: 1,  title: "Third Entry ", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,12))

Entry.create(journal_id: 1,  title: "Entry 4", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,13))

Entry.create(journal_id: 1,  title: "Fifth Entry", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,14))

Entry.create(journal_id: 1,  title: "6th Entry ", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,15))

    Entry.create(journal_id: 9, title: "My Entry", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,16))
    
    Entry.create(journal_id: 17,  title: "My first Entry", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,17))
    
    Entry.create(journal_id: 9,  title: "Travel to Bay", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,18))
    
    Entry.create(journal_id: 17,  title: "Balloond", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,19))
    
    Entry.create(journal_id: 9,  title: "Daves Lie", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,20))
    
    Entry.create(journal_id: 17,  title: "Tree Sightings", body: LiterateRandomizer.paragraphs(paragraphs:3), created_at: Date.new(2021,04,21))

Goallist.create(user_id:1, title:"Janurary")
Goallist.create(user_id:1, title:"Feburary")

Goal.create(goallist_id: 1, title:"Workout EveryDay", completed: false)
Goal.create(goallist_id: 1, title:"Code Everyday", completed: false)
Goal.create(goallist_id: 1, title:"Network More", completed: false)
Goal.create(goallist_id: 1, title:"Meditate More", completed: false)
Goal.create(goallist_id: 1, title:"Call home", completed: false)
Goal.create(goallist_id: 1, title:"Walk daily", completed: false)
Goal.create(goallist_id: 1, title:"Practice Oud", completed: false)
Goal.create(goallist_id: 2, title:"LeetCode more", completed: false)
Goal.create(goallist_id: 2, title:"Workout Everyday", completed: false)
Goal.create(goallist_id: 2, title:"Dinner with Friends", completed: false)
Goal.create(goallist_id: 2, title:"Go on Dates", completed: false)
Goal.create(goallist_id: 2, title:"Read more", completed: false)
Goal.create(goallist_id: 2, title:"Open IRA", completed: false)
Goal.create(goallist_id: 2, title:"Look into Stocks", completed: false)

Guest.create(user_id:1, journal_id:9)
Guest.create(user_id:1, journal_id:17)
Guest.create(user_id:1, journal_id:11)
Guest.create(user_id:1, journal_id:19)
Guest.create(user_id:1, journal_id:13)
Guest.create(user_id:1, journal_id:20)