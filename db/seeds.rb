Player.destroy_all
Match.destroy_all
Outcome.destroy_all
Team.destroy_all
Division.destroy_all
Competition.destroy_all
Club.destroy_all


p1 = Player.create(:name => "Spencer Walden", :matrix => 258.093, :email => "swalden8@gmail.com", :phone => 404565827, :avatar => "https://plus.google.com/u/0/_/focus/photos/private/AIbEiAIAAABDCMjZ3ZmN3PTgFiILdmNhcmRfcGhvdG8qKGNlNjk2OWJiYzIwZjFmNDUwMjdhMGFkMzcyNjc2YTdlZDc1MDdkZmMwAelBB7r719Lzv59jDTYca-VCHXbS?sz=96")
p2 = Player.create(:name => "Clifton Rushby", :matrix => 254.78, :email => "cliffy065@yahoo.com.au", :phone => 406760947, :avatar => "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/v/t1.0-1/p160x160/554155_10152370849438626_731758625_n.jpg?oh=c792dce19f07800ee199e5366804580e&oe=549B1466&__gda__=1418654621_1805ca9cb89a499d5521abac48caa587", :club_id => 2)
p3 = Player.create(:name => "James Willis", :matrix => 243.52, :email => "james.willis00@gmail.com", :phone => 435885262, :club_id => 1)
p4 = Player.create(:name => "Robert Penwill", :matrix => 265.75, :email => "robmeryl@optusnet.com.au", :phone => 408977565, :club_id => 2)

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

m1 = Match.create(:player_one_id => 1, :player_two_id => 2, :date => Date.parse("12/12/2013"))
m2 = Match.create(:player_one_id => 2, :player_two_id => 3, :date => Date.parse("11/12/2013"))
m3 = Match.create(:player_one_id => 1, :player_two_id => 4, :date => Date.parse("10/12/2013"))

o1 = Outcome.create(:match_id => 1, :player_id => :player_one_id, :result => true, :games => 3, :points => 32, :matrix_change => 3, :matrix => 250)
o1 = Outcome.create(:match_id => 1, :player_id => :player_two_id, :result => false, :games => 2, :points => 32, :matrix_change => -3, :matrix => 248)
o1 = Outcome.create(:match_id => 2, :player_id => :player_one_id, :result => true, :games => 3, :points => 40, :matrix_change => 3, :matrix => 280)

# c1.players << p1 << p2 << p3

# comp1.divisions << d1 << d2 << d3







