# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  club_id     :integer
#  division_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Team < ActiveRecord::Base
	has_and_belongs_to_many :players
	belongs_to :club
end
