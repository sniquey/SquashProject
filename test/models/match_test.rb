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

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
