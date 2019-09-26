# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Bob", password: "yes", company_id: 4)
User.create(name: "Bob", email: "bob@gmail.com", title: "Sales", password: "yes", company_id: 1)
User.create(name: "Amy", email: "Amy@gmail.com", title: "Sales Manager", password: "yes", company_id: 1)

Review.create(rating: 4, comment: "This is a comment", reviewer_id: 2, reviewee_id: 1)
Review.create(rating: 4, comment: "NEW COMMENT #2!", reviewer_id: 2, reviewee_id: 1)

Company.create(name: "TraxNYC", address: "62 west 47th st., New York, NY", phone_number: 2123913832, logo_url: "https://pbs.twimg.com/profile_images/1170080074911178754/wMyZiIs__400x400.jpg")
Company.create(name: "Maria Tash", address: "653 broadway, New York, NY", phone_number: 2123913832, logo_url: "https://pbs.twimg.com/profile_images/951597149183029248/Lm-pPFMV_400x400.jpg")
Company.create(name: "Flatiron", address: "81 prospect st., Brooklyn, NY", phone_number: 2123913832, logo_url: "https://res-4.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1397752768/e4ce735bc7e299313e5ca95eaf86a030.png")