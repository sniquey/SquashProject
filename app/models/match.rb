# == Schema Information
#
# Table name: matches
#
#  id            :integer          not null, primary key
#  player_one_id :integer
#  player_two_id :integer
#  date          :date
#  created_at    :datetime
#  updated_at    :datetime
#

class Match < ActiveRecord::Base
  belongs_to :player_one, :class_name => "Player"
  belongs_to :player_two, :class_name => "Player"
  has_many :outcomes
end
