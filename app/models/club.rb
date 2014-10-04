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

class Club < ActiveRecord::Base
	has_many :players
	has_many :teams
end
