# == Schema Information
#
# Table name: outcomes
#
#  id            :integer          not null, primary key
#  player_id     :integer
#  result        :boolean
#  games         :integer
#  points        :integer
#  matrix_change :float
#  matrix        :float
#  created_at    :datetime
#  updated_at    :datetime
#

class Outcome < ActiveRecord::Base
	belongs_to :match
end
