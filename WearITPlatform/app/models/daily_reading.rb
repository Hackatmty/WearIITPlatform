class DailyReading < ActiveRecord::Base
	include ActiveModel::Model

	belongs_to :Device

	validates :calories, numericality :true
	validates :sleephours, numericality :true
	validates :distance, numericality :true
	validates :steps, numericality :true
end
