class BooksController < ApplicationController
  
  private def book_params
    params.require(:book).permit(:title, :autor, :isbn)
  end
  
  def index
    @book = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    
    @book = Book.new(book_params)
    @book.imagen.attach(params[:book][:imagen])
    
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
      
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
