# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  matrix     :float
#  email      :string(255)
#  phone      :integer
#  photo      :text
#  club_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
