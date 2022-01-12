class PagesController < ApplicationController
  def index
    @contentweb = Contentweb.find(params[:contentweb_id])
    @pages = @contentweb.pages
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @contentweb = Contentweb.find(params[:contentweb_id])
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to contentweb_pages_path
    else
      render 'new'
    end
  end

  def edit
    @contentweb = Contentweb.find(params[:contentweb_id])
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to contentweb_pages_path
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to contentweb_pages_path
  end

  private

  def page_params
    params
      .require(:page)
      .permit(
        :name,
        :contentweb_id,
        :user_id,
        :title1,
        :title2,
        :title3,
        :title4,
        :title5,
        :title6,
        :subtitle1,
        :subtitle2,
        :subtitle3,
        :subtitle4,
        :subtitle5,
        :subtitle6,
        :text1,
        :text2,
        :text3,
        :text4,
        :text5,
        :text6
      )
  end
end
