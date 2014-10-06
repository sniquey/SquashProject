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
  belongs_to :winner_id, :class_name => "Player"
  belongs_to :loser_id, :class_name => "Player"
end
