class ImagesController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@course = Image.find(params[:course_id])
		@course.images.create(image_params)
			redirect_to lesson_path(@course)
	end

	private

	def image_params
		params.require(:image).permit(:caption, :image)
		
	end
end
