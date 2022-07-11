class ListsController < ApplicationController

  def index
    @lists = List.all
  end
  def show
   @list = List.find(params[:id])
  end
  def new
    @list = List.new()
  end

  def create
    @list = List.create(task_params)
    redirect_to list_path(List.last)
  end

  def task_params
    params.require(:list).permit(:name)
  end
end
