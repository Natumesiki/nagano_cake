class Admin::AdminFormsController < Devise::AdminFormsController

 def index
   @sweet = Sweet.new
   @sweets = Sweet.all

 end

 def edit

 end

 def show
 end

 def new
  @item = Item.new
  
 end

 def genre_add
  @sweet = Sweet.new
   @admin = current_user.id
  
 end

 def genre_edit
  @sweet = Sweet.new
   @admin =current_user.id
  @genre = Genre.find(params[:id])
  if @genre.user == current_user
   render "edit"
  else
   redirect_to admin_index_path
 end

 def members_list
 end

 def member_edit
 end

 def member_show
 end

 def order_log_list
 end

 def personal_oder_list
 end

 def personal_show
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
