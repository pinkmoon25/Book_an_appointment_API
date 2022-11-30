# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Mentor.destroy_all

tushar = Mentor.create({name: 'Tushar', 
  bio: 'I am tushar a fullstack developer from India', 
  image: 'https://img.freepik.com/premium-psd/3d-illustration-person-with-purple-hair-glasses_23-2149436204.jpg?w=740'});

oyin = Mentor.create( {name: 'Oyin', 
  bio: 'I am Oyin a frontend developer from Nigeria', 
  image: 'https://img.freepik.com/premium-psd/3d-illustration-person-with-glasses-bow_23-2149436205.jpg?w=740'});

walter = Mentor.create({name: 'Walter', 
  bio: 'I am Walter a web developer developer from Amsterdam', 
  image: 'https://img.freepik.com/free-psd/3d-illustration-person-with-glasses_23-2149436189.jpg?w=740&t=st=1669793167~exp=1669793767~hmac=74538b96f65043b425e8f54d62a490f303e32ce38fd5f4910089b1e083f932b1'
});

kevin = Mentor.create({name: 'Kevin', 
  bio: 'I am Kevin a Graphic designer from Africa', 
  image: 'https://img.freepik.com/premium-psd/3d-illustration-business-man-with-glasses_23-2149436193.jpg?w=740'
});

shikhar = Mentor.create({name: 'Shikhar', 
  bio: 'I am shikhar a fullstack developer from India', 
  image: 'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1669793076~exp=1669793676~hmac=20a81795673a6146ca77e01a7d9f74029d9f592e1d980cca2746945c5ea36e19'
});


skills = Skill.create([{name:'React', 
  icon:'https://cdn-icons-png.flaticon.com/512/1260/1260667.png', 
  mentor: oyin },
  {name:'Ruby on Rails', 
    icon:'https://as2.ftcdn.net/v2/jpg/00/61/63/69/1000_F_61636934_usBPrnpjYCgrkrJRODe3rRh51arZRkjB.jpg', 
    mentor: tushar },
  {name:'Javascript', 
    icon:'https://cdn-icons-png.flaticon.com/512/5968/5968292.png', 
    mentor: walter },
  {name:'Graphic design', 
    icon:'https://cdn-icons-png.flaticon.com/512/2779/2779775.png', 
    mentor: kevin },
  {name:'Python', 
    icon:'https://cdn-icons-png.flaticon.com/512/3098/3098090.png', 
    mentor: shikhar }
  ])
