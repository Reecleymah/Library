class BooksController < ApplicationController
  
  def index
    @book = Book.all
  end

  def repository
    @book = Book.all
  end

  def add_book
    @book = Book.new
  end

  def show
    @book= Book.find(params[:id]) 
  end

  def new
    @book = Book.new
  end

  def create

    @book = Book.new(book_params)
    @book.imagen.attach(params[:book][:imagen])
    
    if @book.save
      redirect_to root_path
    else
      render :add_form
    end

  end
  
  private
  def book_params
    params.require(:book).permit(:title, :autor, :isbn, :genre)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
