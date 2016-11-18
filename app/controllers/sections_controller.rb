class SectionsController < ApplicationController

  layout 'admin'
  def index
    @sections = Section.order(:position)
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(sections_params)
    if @section.save
      flash[:notice] = "Section created successfully"
      redirect_to(sections_path)
    else
      render('new')
    end

  end


  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(sections_params)
      flash[:notice] = "Section updated successfully"
      redirect_to(sections_path)
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section deleted successfully"
    redirect_to(sections_path)
  end

  private

  def sections_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content)
  end
end
