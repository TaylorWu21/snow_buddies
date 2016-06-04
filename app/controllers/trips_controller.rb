class TripsController < ApplicationController
	before_action :resorts, only: [:new, :edit]
	before_action :trip, except: [:index, :new, :create]
	before_action :options, only: [:new, :edit, :update, :create]
	def index
		@trips = Trip.where('user_id != ?' ,current_user.id)
  end

  def show
  	@resort = @trip.resorts.first
  end

  def edit
  end

  def update
  	if @trip.update(trip_params)
  		redirect to trip_path(@trip)
  	else
  		render :edit
  	end
  end

  def new
  	@trip = Trip.new
  end

  def create
  	@trip = current_user.trips.create(trip_params)

  	@resort = Resort.find(params[:trip][:location])
  	@location	= Location.create(trip_id: @trip.id, resort_id: @resort.id)
  	if @trip.save
  		flash[:success] = "Trip was created!"
  		redirect_to trip_path(@trip)
  	else
  		flash[:notice] = "Trip failed to create."
  		render :new
  	end
  end

  def destroy
  	@trip.destroy
  	flash[:success] = "Trip has been cancelled"
  	redirect_to trips_path
  end

  private
  	def resorts
  		@resorts = Resort.all
  	end

  	def trip_params
  		params.require(:trip).permit(:title, :date,:description)
  	end

  	def trip
  		@trip = Trip.find(params[:id])
  	end

  	def options
  		@options = Resort.all.map { |resort| [resort.name, resort.id] } || []
  		# @options = [['Solitude', '84121'],
				# 							 ['Park City/Canyons', '84060'],
				# 							  ['Sundance', '84604'],
				# 							  ['Powder Mountain', '84310'],
				# 							  ['Beaver Mountain', '84321'],
				# 							  ['Snowbird', '84092'],
				# 							  ['Brighton', '84121'],
				# 							  ['Brian Head', '84719'],
				# 							  ['Alta', '84092'],
				# 							  ['Richmond', '84333'],
				# 							  ['Deer Valley', '84060'],
				# 							  ['Snow Basin', '84317']
				# 							  ]
  	end
end
