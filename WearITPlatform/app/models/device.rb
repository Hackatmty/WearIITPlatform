class Device < ActiveRecord::Base
	include ActiveModel::Model

	belongs_to :User

	validates :name
	validates :brand

end
