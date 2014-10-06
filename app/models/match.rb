# == Schema Information
#
# Table name: matches
#
#  id                   :integer          not null, primary key
#  winner_id            :integer
#  loser_id             :integer
#  date                 :date
#  winner_games         :integer
#  winner_points        :integer
#  winner_before_matrix :float
#  winner_matrix_change :float
#  loser_games          :integer
#  loser_points         :integer
#  loser_before_matrix  :float
#  loser_matrix_change  :float
#  created_at           :datetime
#  updated_at           :datetime
#

class Match < ActiveRecord::Base
  belongs_to :winner, :class_name => "Player"
  belongs_to :loser, :class_name => "Player"
end
