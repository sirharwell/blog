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
end
