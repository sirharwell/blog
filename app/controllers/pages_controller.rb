class PagesController < ApplicationController
  #GET /pages
  def index
    @pages = Page.all
  end

  #GET /pages/:id
  def show
    @page = Page.find(params[:id])
  end

  #GET /pages/new
  def new
    @page = Page.new
  end

  #POST /pages
  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to page_path(@page)
    else
      render :new
    end
  end

def edit
  @page = Page.find(params[:id])
end

  private
    def page_params
      params.require(:page).permit(:body, :author, :title)
    end
end

def update
  @page = Page.find(params[:id])
    redirect_to page_path(@page)
  else
    render :edit
  end
end
