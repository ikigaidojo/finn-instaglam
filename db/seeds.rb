# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

member = Member.create(
  first_name: "barbara",
  last_name:  "jones",
  username:   "bjones", 
  email:      "barbara.jones@gmail.com"

  )

member2 = Member.create(
  first_name: "suzie",
  last_name:  "jhonathon",
  username:   "sjhonathon",
  email:      "suzie.jhonathon@gmail.com"
  )



member.posts << Post.new(caption: "Hermano mark" )
member.posts << Post.new(caption: "Hermano James")
member.posts << Post.new(caption: "Joshua mark"  )
member.posts << Post.new(caption: "Steve mark"   )


member2.posts << Post.new(caption: "Hermano mark" )
member2.posts << Post.new(caption: "Hermano James")
member2.posts << Post.new(caption: "Joshua mark"  )
member2.posts << Post.new(caption: "Steve mark"   )

