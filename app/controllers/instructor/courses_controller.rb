class Instructor::CoursesController < ApplicationController
	before_action :authenticate_user!
	before_action :requre_authorize_for_current_course, only: [:show]

	def new
		@course = Course.new
	end


	def create
		@course = current_user.courses.create(course_params)
		if @course.valid?
			redirect_to instructor_course_path(@course)
		else
			render :new, status: :unprocessible_entity
		end
	end

	def show
	end

	private

	def requre_authorize_for_current_course
			if current_course.user != current_user
			redirect_to root_path, flash: {alert: "Unauthorized"}
		end
	end

	helper_method :current_course
  
  	def current_course
    	@current_course ||= Course.find(params[:id])
  	end

	def course_params
		params.require(:course).permit(:title, :description, :cost)
	end

end
