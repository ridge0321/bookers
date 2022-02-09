class BooksController < ApplicationController
  # def new
  #   @list=Book.new
  # end

  def index
    @books=Book.all
    @book=Book.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # # 3. データをデータベースに保存するためのsaveメソッド実行
    # book.save
    # # 4. トップ画面へリダイレクト
    # redirect_to book_path(book.id)

    if @book.save
      redirect_to book_path(@book.id) , notice: "Book was successfully created."
    else
      @books=Book.all
      render :index
    end

  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id),notice: "Book was successfully updated."
    else
      render :edit
    end

  end

  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books' ,notice: "Book was successfully destroyed." # 投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
