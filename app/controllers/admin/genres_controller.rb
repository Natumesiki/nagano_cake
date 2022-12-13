class Admin::GenresController < ApplicationController

   def index
  @sweet = Sweet.new
   @admin = current_user.id
   end

 def edit
  @sweet = Sweet.new
   @admin =current_user.id
  @genre = Genre.find(params[:id])
  if @genre.user == current_user
   render "edit"
  else
   redirect_to admin_index_path
  end
 end
end
