class MinuteReading < ActiveRecord::Base
	include ActiveModel::Model

	belongs_to :Device

	validates :heartbeats, numericality: true
	validates :distance, numericality: true
	validates :steps, numericality: true
	
end
