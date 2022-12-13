class Admin::ItemsController < ApplicationController

 def index
    # @sweet = Sweet.new
  # @sweets = Sweet.all
 end

 def new
    @item = Item.new
 end

 def show
 end

 def edit
 end

def create
     @sweet = Sweet.new(sweet_params)
       @sweet.user_id = current_user.id
      if @sweet.save
     redirect_to admin_index_path(@sweet.id), notice: "You have created book successfully."
      else
    @user = current_user
    @sweets = Sweet.all
    render 'admin/index'
      end
end


 private

  def sweet_params
    params.require(:sweet).permit(:price,:genre,:title,:body,:user_id)
  end
end
