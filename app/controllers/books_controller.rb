class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)
    else
    render :index
    #render :アクション名
    end
  end

  def new

  end

  def update
    @book = Book.find(params[:id])
   if @book.update(book_params)
     flash[:notice] ="Book was successfully updated."
    redirect_to book_path(@book.id)
   else
   
   render :edit
   end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  #ストロングパラメータ
  #以下、コントローラー内でのみ使用可能
  private
  def book_params
  params.require(:book).permit(:title, :body)
  end
  #bookモデルのタイトル、
end
