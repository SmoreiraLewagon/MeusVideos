class CommentsController < ApplicationController

    def create
        @video = Video.find(params['video_id'])
        @comment = Comment.new(comments_params)
        @comment.video_id = params['video_id']
        respond_to do |format|
            if @comment.save
                format.html { redirect_to @video, notice: "comment was successfully created." }
                format.json { render :show, status: :created, location: @comment }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @comment.errors, status: :unprocessable_entity }
            end
        end 
    end
    
  private

  def comments_params
    params.require(:comment).permit(:author, :body)
  end
end

    