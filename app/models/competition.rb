# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Competition < ActiveRecord::Base
	has_many :divisions
	has_many :teams, :through => :divisions
end
