class CommentsController < ApplicationController
	def create
		@animal = Animal.find params[:animal_id]
		@animal.comments.create(comment_params)
		redirect_to animal_path(@animal)
	end
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
