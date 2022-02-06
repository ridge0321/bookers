class BooksController < ApplicationController
  def new
    @list=Book.new
  end

  def index
    @books=Book.all
  end

  def show
  end

  def edit
  end
end
