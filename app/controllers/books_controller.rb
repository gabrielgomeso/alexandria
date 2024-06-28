class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_admin!, only: [:new, :create]

  def index
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

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def book_params
      params.require(:book).permit(
      :uuid,
      :title,
      :author,
      :category,
      :isbn,
      :publisher,
      :publication_date,
      :language,
      :description,
      :page_number,
      :borrowed,
      :current_holder_id,
      :cover
    )
  end

  def authorize_admin!
    unless current_user.admin?
      flash[:alert] = 'You do not have permission to perform this action.'
      redirect_to root_path
    end
  end
end
