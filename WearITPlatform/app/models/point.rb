class Point < ActiveRecord::Base
  belongs_to :tracksegment
  def point_params
  	params.require(:point).permit(:description, :elevation, :latitude, :longitude, :name, :point_created_at)
  end
end
