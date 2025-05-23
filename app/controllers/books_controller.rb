class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      @books = Book.all
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
    redirect_to books_path unless @book.user == current_user
  end

  def update
    @book = Book.find(params[:id])
    if @book.user == current_user
      if @book.update(book_params)
        redirect_to @book, notice: 'Book was successfully updated.'
      else
        render :edit
      end
    else
      redirect_to books_path
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.user == current_user
      @book.destroy
      redirect_to books_url, notice: 'Book was successfully destroyed.'
    else
      redirect_to books_path
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
