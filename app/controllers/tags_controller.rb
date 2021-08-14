class TagsController < ApplicationController
  before_action :set_tag, only: %i[ show edit update destroy ]
  def create
    @video = Video.find(params[:video_id])
    @tag = Tag.new(tag_params)
    @tag.video_id = params[:video_id]
    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, notice: "tag was successfully created." }
        format.json { render :show, status: :created, location: @tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
   
    @tag = Tag.new
  end

  def index
    if params[:query].present?
        @query = params[:query]
        @tags = Tag.where("category LIKE ?","%#{params[:query]}%")
    else
      @tags = Tag.all
    end
  end

  def destroy
    @tag.destroy
    redirect_to video_path(@tag.video)
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end
  def tag_params
    params.require(:tag).permit(:category, :favorite,:video_id)
  end
end
