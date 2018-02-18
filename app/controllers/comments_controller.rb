class CommentsController < ApplicationController
  def create
  	comment = Comment.create(
  			post_id: params[:comment][:post_id],
  			user_id: current_user.id,
  			content: params[:comment][:content]
  		)
  	
  	redirect_to "/posts/#{params[:comment][:post_id]}"
  end
end
