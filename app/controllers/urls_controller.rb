class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def show
    # url = Url.where(:original => params[:id])
    @url = Url.find(params[:id])

    if @url
      redirect_to @url.original
    else
      render 'index'
    end
  end


  def new
    @url = Url.new

  end

  def create
    @url = Url.new(url_params)

    if @url.save
      redirect_to urls_path
    else
      render 'new'
    end
  end

  def url_params
    params.require(:url).permit(:original)
  end

end
