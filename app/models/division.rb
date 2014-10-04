# == Schema Information
#
# Table name: divisions
#
#  id             :integer          not null, primary key
#  number         :integer
#  competition_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Division < ActiveRecord::Base
	belongs_to :competition
	has_many :teams
end
