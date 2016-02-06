class Instructor::CoursesController < ApplicationController
	before_action :authenticate_user!
	before_action :requre_authorize_for_current_course, only: [:show, :edit, :update, :destroy]

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
		@section = Section.new
		@lesson = Lesson.new
	end

	def edit

		if current_course.user != current_user 
			return render :text => 'Not allowed', :status => :forbidden
		end

		def update
			if current_course.user != current_user 
				return render :text => 'Not allowed', :status => :forbidden
			end

			if current_course.update_attributes(course_params)
				flash[:success] = "Course updated"
				redirect_to current_course
			else
				render 'edit'
			end
		end


		def destroy
			if current_course.user != current_user 
				return render :text => 'Not allowed', :status => :forbidden
			end

			current_course.destroy
			redirect_to root_path
		end
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
		params.require(:course).permit(:title, :description, :cost, :image)
	end

end
