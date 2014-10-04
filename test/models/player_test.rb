# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  matrix          :float
#  phone           :integer
#  club_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text             default("http://top10hm.com/wp-content/uploads/2012/06/Squash-300x200.jpg")
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
