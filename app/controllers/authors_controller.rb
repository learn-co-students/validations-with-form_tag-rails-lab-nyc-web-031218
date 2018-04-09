class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
      @author = Author.create(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
    
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
# 1. Create controllers for both models.
# 1. Create `show`, `new`, `edit`, `create`, and `update` routes for both models.
# 1. Define controller actions for `show`, `new`, and `edit`.
# 1. Define the "valid path" for the `create` and `update` controller actions.
# 1. Define the "invalid path" for the `create` and `update` controller actions.
