	class CoursesController < ApplicationController

		def index
			@courses = Course.all
			if params[:search]
				@courses = Course.search(params[:search]).order("created_at DESC")
			else
				@courses = Course.all.order('created_at DESC')
			end
		end


		def show
			@course = Course.find(params[:id])
		end



	end
