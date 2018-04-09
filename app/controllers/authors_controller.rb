class AuthorsController < ApplicationController
  before_action :set_author, only: [:edit, :update]

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end

  end

  def edit
  end

  def update
    @author.assign_attributes(author_params)

    if @author.valid?
      @author.save
      redirect_to @author
    else
      render :edit
    end

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author
    @author = Author.find(params[:id])
  end

end
