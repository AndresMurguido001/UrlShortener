class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def show
    @url = Url.where(:random_string => params[:id]).first
    # @url = Url.find_by(:id params[:id])

    if @url
      redirect_to @url.original
    else
      render 'index'
    end
  end


  def new
    @urls = Url.all
    @url = Url.new

    url_string = [('a'..'z')].map(&:to_a).flatten
    @url.random_string = (0..4).map { url_string[rand(url_string.length)] }.join

  end

  def create
    @url = Url.new(url_params)

    if @url.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @url = Url.destroy(params[:id])
    redirect_to root_path
  end


  def url_params
    params.require(:url).permit(:original, :random_string)
  end

end
