class Admin::ItemsController < ApplicationController
  # before_action :authenticate_admin!
  # before_action :set_items, only: %i[show edit update]

  def edit
      @sweet = Admin::Item.new
      @sweet = Admin::Item.find(params[:id])
  end

  def index
    @sweet = Admin::Item.new
     @sweets = Admin::Item.all
  end

  def new
    @new = Admin::Item.new
  end

  def show
      @sweet = Admin::Item.new
    @sweet = Admin::Item.find(params[:id])
  end

 def update
     @sweet = Admin::Item.find(params[:id])
     if @sweet.update(item_params)
      redirect_to admin_item_path(@sweet)
     else
      render :edit
     end
 end

def create
      @new = Admin::Item.new(item_params)
    #   @sweet.user_id = current_user.id
      if @new.save
        redirect_to admin_items_path([:admin,@new].id), notice: "You have created book successfully."
      else
          @news = Admin::Item.all
         render :index
      end
end

 private

  def sweet_params
    params.require(:item).permit(:price,:genre,:description, :stock)
  end

end