class BooksController < ApplicationController
  # Adds: reject not-signin users
  before_action :authenticate_user!

  # Adds: reject not-edit another user prifiles
  before_action :correct_user, only: [:edit, :update]

  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
  end

  def index
    @books = Book.all #一覧表示するためにBookモデルの情報を全てくださいのall
    @book = Book.new
  end

  def create
    @book = current_user.books.new(book_params) #Bookモデルのテーブルを使用しているのでbookコントローラで保存する。
    if @book.save #入力されたデータをdbに保存する。
      redirect_to @book, notice: "successfully created book!" #保存された場合の移動先を指定。
    else
      @books = Book.all
      render "index"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "successfully updated book!"
    else #if文でエラー発生時と正常時のリンク先を枝分かれにしている。
      render "edit"
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "successfully delete book!"
  end

  private

  def correct_user
    book = Book.find(params[:id])
    # refactering because book model has belong_to
    if current_user.id != book.user.id
      redirect_to books_path
    end
  end

  def book_params
    params.require(:book).permit(:body, :title, :user_id)
  end
end
