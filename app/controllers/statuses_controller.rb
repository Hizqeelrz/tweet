class StatusesController < ApplicationController
	before_action :authenticate_user!

	def index
		@status = Status.new
		@statuses = current_user.statuses.all
	end

	def create
		@status = Status.new(status_params)
		@status.user = current_user
		if @status.save
			flash[:success] = "status is saved!"
			redirect_to statuses_path
		else
			flash[:error] = "status not saved!"
			redirect_to statuses_path
		end
	end

	private
	def status_params
		params.require(:status).permit(:body)
	end
end
