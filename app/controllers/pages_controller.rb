class PagesController < ApplicationController

  layout 'admin'
  def index
    @pages = Page.order(:position)
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page created succesfully"
      redirect_to(pages_path)
    else
      render ('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully"
      redirect_to(pages_path)
    else
      render('edit')
    end

  end


  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page deleted successfully"
    redirect_to(pages_path)
  end

  private

  def page_params
    params.require(:page).permit(:name, :position, :subject_id, :visible)

  end

end
