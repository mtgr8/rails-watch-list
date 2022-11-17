class ListsController < ApplicationController

  def index
    @lists = List.all
    @movie_quote = Faker::Movie
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.valid?
      @list.save
      redirect_to(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
