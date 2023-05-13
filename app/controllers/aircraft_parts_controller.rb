class AircraftPartsController < ApplicationController
	def index
		@aircraft_parts= AircraftPart.paginate(page: params[:page])
	end
end


