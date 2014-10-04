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

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
