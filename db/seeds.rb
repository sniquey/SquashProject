Player.destroy_all
Match.destroy_all
Team.destroy_all
Division.destroy_all
Competition.destroy_all
Club.destroy_all


p1 = Player.create(:name => "Spencer Walden", :id => 22646, :matrix => 258.093, :email => "swalden8@gmail.com", :phone => 404565827, :avatar => "https://plus.google.com/u/0/_/focus/photos/private/AIbEiAIAAABDCMjZ3ZmN3PTgFiILdmNhcmRfcGhvdG8qKGNlNjk2OWJiYzIwZjFmNDUwMjdhMGFkMzcyNjc2YTdlZDc1MDdkZmMwAelBB7r719Lzv59jDTYca-VCHXbS?sz=96")
p2 = Player.create(:name => "Clifton Rushby", :id => 34778, :matrix => 254.78, :email => "cliffy065@yahoo.com.au", :phone => 406760947, :avatar => "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/v/t1.0-1/p160x160/554155_10152370849438626_731758625_n.jpg?oh=c792dce19f07800ee199e5366804580e&oe=549B1466&__gda__=1418654621_1805ca9cb89a499d5521abac48caa587", :club_id => 2)
p3 = Player.create(:name => "James Willis", :id => 15578, :matrix => 243.52, :email => "james.willis00@gmail.com", :phone => 435885262, :club_id => 1)
p4 = Player.create(:name => "Robert Penwill", :id => 9380, :matrix => 265.75, :email => "robmeryl@optusnet.com.au", :phone => 408977565, :club_id => 2)

c1 = Club.create(:name => 'Lane Cove Squash')
c2 = Club.create(:name => 'MAASH')
c3 = Club.create(:name => 'Willoughby Squash')

d1 = Division.create(:number => 1)
d2 = Division.create(:number => 2)
d3 = Division.create(:number => 3)

t1 = Team.create(:name => "Lane Cove M07", :club_id => 1)

comp1 = Competition.create(:name => "Spring North 2014")
comp2 = Competition.create(:name => "Spring South 2014")
comp3 = Competition.create(:name => "Spring West 2014")

m1 = Match.create(:winner_id => 22646, :loser_id => 34778, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)
m2 = Match.create(:winner_id => 34778, :loser_id => 15578, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)
m2 = Match.create(:winner_id => 9380, :loser_id => 22646, :date => Date.parse("12/12/2013"), :winner_games => 3, :winner_points => 32, :winner_before_matrix => 250, :winner_matrix_change => 2, :loser_games => 2, :loser_points => 20,  :loser_before_matrix => 260, :loser_matrix_change => -2)



# m1.winner = p1
# m1.loser = p2
# m2.winner = p3
# m2.loser = p1
# m3.winner = p4
# m3.loser = p1

# comp1.divisions << d1 << d2 << d3



