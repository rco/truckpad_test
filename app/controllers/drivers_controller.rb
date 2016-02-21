class DriversController < ApplicationController

	def index
		@drivers = Driver.order :name

		@hash = Gmaps4rails.build_markers(@drivers) do |driver, marker|
			marker.lat driver.latitude
			marker.lng driver.longitude
			marker.infowindow driver.name
		end
	end


	def new
		@driver = Driver.new
		@drivers = Driver.order :name
	end

	def create
		driver_params = params.require(:driver).permit :name, :cpf, :truck_type, :longitude, :latitude
		@driver = Driver.new driver_params
		if @driver.save
			redirect_to root_url
		else
			render :new
		end
		
	end

	def destroy
		id = params[:id]
		Driver.destroy(id)	
		redirect_to root_url
	end
end