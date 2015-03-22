class Track < ActiveRecord::Base
	def track_params
		params.require(:track).permit(:name, :gpx)
	end
	has_many :tracksegments, :dependent => :destroy
	has_many :points, :through => :tracksegments
	has_attached_file :gpx
end
