class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :create]

  #vai instanciar o modelo vai buscar ao modelo os parms
  def new
   @bookmark = Bookmark.new()
  end


  #vai criar o bookmark e salvar na db
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save!
    redirect_to list_path(@list)
  end

  def destroy

  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
