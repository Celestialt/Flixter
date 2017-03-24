class Instructor::LessonsController < ApplicationController
	
	def new
		@section = Section.find(params[:section_id])
		@lesson = Lesson.new
	end

	def create
		@section = Section.find(params[:section_id])
		@lesson = @section.lessons.create(lesson_params)
		redirect_to instructor_course_path(@section.course)
		
	end
end
