# == Schema Information
#
# Table name: outcomes
#
#  id            :integer          not null, primary key
#  player_id     :integer
#  match_id      :integer
#  result        :boolean
#  games         :integer
#  points        :integer
#  matrix_change :float
#  matrix        :float
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class OutcomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
