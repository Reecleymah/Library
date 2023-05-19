class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def add
    book = Book.find(params[:book_id])
    current_user.favorite_books << book
    redirect_to book, notice: "Libro agregado a favoritos"
  end

  def remove
    book = Book.find(params[:book_id])
    current_user.favorite_books.delete(book)
    redirect_to book, notice: "Libro eliminado de favoritos"
  end
end
