class TagsController < ApplicationController
    def create
        @video = Video.find(params['video_id'])
        @tag = tag.new(tag_params)
        @tag.video_id = params['video_id']
        if @tag.save
            redirect_to tags_path, notice: "You taged the video"
        else
            render 'videos/show'
        end
    end
    def index
        @tags = Tag.all
    end
    private

    def tag_params
      params.require(:tag).permit(:category, :favorite, :video_id)
    end
end

