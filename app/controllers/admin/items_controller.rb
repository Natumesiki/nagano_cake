class Admin::ItemsController < ApplicationController
  # before_action :authenticate_admin!
  # before_action :set_items, only: %i[show edit update]

  def edit
      # @sweet = Sweet.find(params[:id])
  end

  def index
    # @sweet = Sweet.new
    # @sweets = Sweets.all
  end

  def new
    @new = Admin::Item.new
  end

  def show
    # @sweet = Sweet.find(params[:id])
  end

 def update
    # sweet = Sweet.find(params[:id])
    # sweet.update(sweet_params)
    # redirect_to admin_items_path(sweet.id)
 end

def create
      @sweet = Item.new(item_params)
    #   @sweet.user_id = current_user.id
      if @sweet.save
        redirect_to admin_index_path(@sweet.id), notice: "You have created book successfully."
      else
         render :new
      end
    end

 private

  def sweet_params
    params.require(:item).permit(:price,:genre,:title,:body,:user_id)
  end

end