Player.destroy_all
Match.destroy_all
Team.destroy_all
Division.destroy_all
Competition.destroy_all
Club.destroy_all

p1 = Player.create(:name => "Spencer Walden", :id => 22646, :matrix => 258.093, :email => "swalden8@gmail.com", :phone => 404565827, :avatar => "https://plus.google.com/u/0/_/focus/photos/private/AIbEiAIAAABDCMjZ3ZmN3PTgFiILdmNhcmRfcGhvdG8qKGNlNjk2OWJiYzIwZjFmNDUwMjdhMGFkMzcyNjc2YTdlZDc1MDdkZmMwAelBB7r719Lzv59jDTYca-VCHXbS?sz=96", :club_id => 3, :password_digest => "$2a$10$vTOzTQD1weGepd9VzlxeJeWPiJZk0rCUIsC3pGBvX2zenqBxthr.y")
p2 = Player.create(:name => "Clifton Rushby", :id => 34778, :matrix => 254.78, :email => "cliffy065@yahoo.com.au", :phone => 406760947, :avatar => "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/v/t1.0-1/p160x160/554155_10152370849438626_731758625_n.jpg?oh=c792dce19f07800ee199e5366804580e&oe=549B1466&__gda__=1418654621_1805ca9cb89a499d5521abac48caa587", :club_id => 2, :password_digest => "$2a$10$vTOzTQD1weGepd9VzlxeJeWPiJZk0rCUIsC3pGBvX2zenqBxthr.y")
p3 = Player.create(:name => "James Willis", :id => 15578, :matrix => 243.52, :email => "james.willis00@gmail.com", :phone => 435885262, :club_id => 126, :password_digest => "$2a$10$vTOzTQD1weGepd9VzlxeJeWPiJZk0rCUIsC3pGBvX2zenqBxthr.y")
p4 = Player.create(:name => "Robert Penwill", :id => 9380, :matrix => 265.75, :email => "robmeryl@optusnet.com.au", :phone => 408977565, :club_id => 2, :password_digest => "$2a$10$vTOzTQD1weGepd9VzlxeJeWPiJZk0rCUIsC3pGBvX2zenqBxthr.y")
# Nathan Staines, 63628
# 61040 Lindsay Martin
# Jason Budding	54115



c1 = Club.create(:name => 'Lane Cove Squash', :id => 126, :location => "29 Birdwood Ave, Lane Cove NSW, Australia", :facebook=>"https://www.facebook.com/pages/Lane-Cove-Squash-And-Fitness/141492379241549")
c2 = Club.create(:name => 'MAASH', :id => 2, :location => "1 Trafalgar Pl, Marsfield NSW 2122, Australia", :facebook=>"https://www.facebook.com/pages/MAASH-Squash-Club/109439752412879")
c3 = Club.create(:name => 'Willoughby Squash', :id =>3, :location => "443 Willoughby Rd, Willoughby NSW 2068, Australia", :facebook=>"https://www.facebook.com/willoughbysquashclub")


# p1 = Player.retrieve(22646)
# p1 = Player.retrieve(63628)
# p1 = Player.retrieve(61040)
# p1 = Player.retrieve(54115)
# p1 = Player.retrieve(9333)
# p1 = Player.retrieve(8024)
# p1 = Player.retrieve(7126)
# p1 = Player.retrieve(8269)
# p1 = Player.retrieve(67559)
# p1 = Player.retrieve(14236)
# p1 = Player.retrieve(18664)
# p1 = Player.retrieve(9380)
# p1 = Player.retrieve(43185)


# Match.retrieve(63628)
# Match.retrieve(61040)
# Match.retrieve(63628)
# Match.retrieve(54115)
# Match.retrieve(9333)
# Match.retrieve(8024)
# Match.retrieve(7126)
# Match.retrieve(8269)
# Match.retrieve(67559)
# Match.retrieve(63628)
# Match.retrieve(14236)
# Match.retrieve(18664)
# Match.retrieve(9380)
# Match.retrieve(43185)
# Match.retrieve(10000)


d1 = Division.create(:number => 1)
d2 = Division.create(:number => 2)
d3 = Division.create(:number => 3)
d1 = Division.create(:number => 4)
d2 = Division.create(:number => 5)
d3 = Division.create(:number => 6)
d2 = Division.create(:number => 7)
d3 = Division.create(:number => 8)
d1 = Division.create(:number => 9)
d2 = Division.create(:number => 10)
d3 = Division.create(:number => 11)
d2 = Division.create(:number => 12)
d3 = Division.create(:number => 13)
d1 = Division.create(:number => 14)
d2 = Division.create(:number => 15)
d3 = Division.create(:number => 16)

t1 = Team.create(:name => "Lane Cove M07", :club_id => 1)
t1 = Team.create(:name => "MAASH M07", :club_id => 1)
t1 = Team.create(:name => "WILLOUGHBY M07", :club_id => 1)
t1 = Team.create(:name => "Lane Cove M06", :club_id => 1)
t1 = Team.create(:name => "Lane Cove M05", :club_id => 1)
t1 = Team.create(:name => "MAASH M06", :club_id => 1)
t1 = Team.create(:name => "Norths M20", :club_id => 1)
t1 = Team.create(:name => "MAASH M10", :club_id => 1)
t1 = Team.create(:name => "WILLOUGHBY M03", :club_id => 1)
t1 = Team.create(:name => "Lane Cove M01", :club_id => 1)
t1 = Team.create(:name => "Macquaire M03", :club_id => 1)
t1 = Team.create(:name => "Macquarie M00", :club_id => 1)
t1 = Team.create(:name => "Team Awesome", :club_id => 1)
t1 = Team.create(:name => "Bears", :club_id => 1)
t1 = Team.create(:name => "Norths M07", :club_id => 1)

comp1 = Competition.create(:name => "Spring North 2014")
comp2 = Competition.create(:name => "Spring South 2014")
comp3 = Competition.create(:name => "Spring West 2014")
comp4 = Competition.create(:name => "Tournaments 2014")

m1 = Match.create(:winner_id => 22646, :loser_id => 34778, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)
m2 = Match.create(:winner_id => 34778, :loser_id => 15578, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)
m3 = Match.create(:winner_id => 9380, :loser_id => 22646, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)
m4 = Match.create(:date => Date.parse("04/10/2014"), :winner_id => 22464, :loser_id => 63628, :winner_games => 1, :loser_games => 0, :winner_points => 32, :loser_points => 25, :winner_matrix_change => 1.97, :loser_matrix_change => -1.97, :winner_before_matrix => 261.11, :loser_before_matrix => 265.964)
m5 = Match.create(:date => Date.parse("04/10/2014"), :winner_id => 22464, :loser_id => 61040, :winner_games => 1, :loser_games => 0, :winner_points => 41, :loser_points => 33, :winner_matrix_change => 1.03, :loser_matrix_change => -0.64, :winner_before_matrix => 259.14, :loser_before_matrix => 250.47)
m6 = Match.create(:date => Date.parse("04/10/2014"), :winner_id => 54115, :loser_id => 22464, :winner_games => 1, :loser_games => 0, :winner_points => 40, :loser_points => 28,	:loser_matrix_change => 0.02, :winner_matrix_change => 0.64, :loser_before_matrix => 258.11, :winner_before_matrix => 276.76)
m7 = Match.create(:date => Date.parse("04/10/2014"), :loser_id => 63628, :winner_id => 54115, :winner_games => 1, :loser_games => 0, :winner_points => 34, :loser_points => 20,	:loser_matrix_change => 0.02, :winner_matrix_change => 1.34, :loser_before_matrix => 267.32, :winner_before_matrix => 276.13)
m8 = Match.create(:date => Date.parse("04/10/2014"), :loser_id => 61040, :winner_id => 54115, :winner_games => 1, :loser_games => 0, :winner_points => 35, :loser_points => 32,	:loser_matrix_change => 0.74, :winner_matrix_change => 0.28, :loser_before_matrix => 250.99, :winner_before_matrix => 274.75)
m9 = Match.create(:date => Date.parse("04/10/2014"), :loser_id => 61040, :winner_id => 63628, :winner_games => 1, :loser_games => 0, :winner_points => 42, :loser_points => 32,	:loser_matrix_change => 0.13, :winner_matrix_change => 0.62, :loser_before_matrix => 251.11, :winner_before_matrix => 267.93)
