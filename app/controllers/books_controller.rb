class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(
      title: 
          params[:book][:tite],
      autor: 
          params[:book][:autor],
      isbn: 
          params[:book][:isbn],
      )
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
