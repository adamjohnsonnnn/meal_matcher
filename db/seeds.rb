20.times do

  user = User.create!(first_name: Faker::LordOfTheRings.character, last_name: Faker::Name.last_name, birthday: Faker::Date.birthday(18, 65), email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone, password: Faker::Hipster.word)

end

user1 = User.find(1)
user1.home_address = '2052 N Larrabee St Chicago IL'
user1.save!

user2 = User.find(2)
user2.home_address = '1720 N Lincoln Ave Chicago IL'
user2.save!

user3 = User.find(3)
user3.home_address = '440 N Wells St Chicago IL'
user3.save!

user4 = User.find(4)
user4.home_address = '201 South Blvd, Oak Park, IL 60302'
user4.save!

user5 = User.find(5)
user5.home_address = '1215 Church St, Evanston, IL 60201'
user5.save!

user6 = User.find(6)
user6.home_address = '724 S Northwest Hwy, Barrington, IL 60010'
user6.save!

user7 = User.find(7)
user7.home_address = '100 Nugent St, Glenwood, IL 60425'
user7.save!

user8 = User.find(8)
user8.home_address = '3033 E 24th Rd, Marseilles, IL 61341'
user8.save!

user9 = User.find(9)
user9.home_address = '2600 S California Ave, Chicago, IL 60608'
user9.save!

user10 = User.find(10)
user10.home_address = '1500 S Jefferson St, Chicago, IL 60607'
user10.save!

user11 = User.find(11)
user11.home_address = '1716 W Grand Ave, Chicago, IL 60622'
user11.save!

user12 = User.find(12)
user12.home_address = '7531 S Stony Island Ave # 1, Chicago, IL 60649'
user12.save!

user13 = User.find(13)
user13.home_address = '817 Elm St, Winnetka, IL 60093'
user13.save!

user14 = User.find(14)
user14.home_address = '653 Vernon Ave, Glencoe, IL 60022'
user14.save!

user15 = User.find(15)
user15.home_address = '340 S Waukegan Rd, Deerfield, IL 60015'
user15.save!

user16 = User.find(16)
user16.home_address = '650 Ridge Ave, Elk Grove Village, IL 60007'
user16.save!

user17 = User.find(17)
user17.home_address = '12622 W 159th St, Homer Glen, IL 60491'
user17.save!

user18 = User.find(18)
user18.home_address = '928 S State St, Lockport, IL 60441'
user18.save!

user19 = User.find(19)
user19.home_address = '808 Ramsgate Ct, Naperville, IL 60540'
user19.save!

user20 = User.find(20)
user20.home_address = '1520 N Damen Ave, Chicago, IL 60622'
user20.save!
