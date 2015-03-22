class Device < ActiveRecord::Base
	include ActiveModel::Model

	hasmany :minute_readings, dependent: :destroy
	hasmany :daily_readings, dependent: :destroy

	belongs_to :user

	validates :name
	validates :brand

end
