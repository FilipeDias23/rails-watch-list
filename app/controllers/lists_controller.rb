class ListsController < ApplicationController

  def index
    @lists = List.all
  end
  def show
   @list = List.find(params[:id])
  @bookmark = Bookmark.new
  end
  def new
    @list = List.new()
  end

  def create
    @list = List.new(task_params)
    if @list.save
    redirect_to list_path(List.last)
    else
      render :new
    end
  end

  def task_params
    params.require(:list).permit(:name)
  end
end
