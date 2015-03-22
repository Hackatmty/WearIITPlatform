class User < ActiveRecord::Base

	hasmany :devices, dependent: :destroy
	

	validates :name
	validates :birthDate
	validates :gender, inclusion: { in: %w(male female),
    message: "%{value} is not a valid size" }
    validates :weight, numericality :true
    validates :height, numericality :true

end
