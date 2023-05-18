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
    
    if @book.save
      @book.imagen.attach(params[:book][:imagen])
      redirect_to root_path
    else
      render :add_form
    end

  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def update
    
    @book = Book.find(params[:id])
    @book.update(book_params_update)

    redirect_to root_path

  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :autor, :isbn, :genre)
  end

  private
  def book_params_update
    params.require(:book).permit(:title, :autor, :isbn, :genre, :image)
  end

end
