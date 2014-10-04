# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  manager    :string(255)
#  phone      :integer
#  website    :text
#  email      :text
#  facebook   :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ClubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
