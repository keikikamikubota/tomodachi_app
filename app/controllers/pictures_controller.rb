class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def confirm
    @picture = Picture.new(picture_params)
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        redirect_to pictures_path, notice: "投稿が完了しました！"
      else 
        render :new
      end
    end
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "編集が完了しました！"
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  private

    def picture_params
      params.require(:picture).permit(:image, :content, :image_cache)
    end
end
