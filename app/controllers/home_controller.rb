class HomeController < ApplicationController
def index
   @student = Student.all
   if params[:search]
      @student = Student.search(params[:search])
      #@student = Student.find params[:search]
   else
    @student = Student.all.order('created_at DESC')
   end
 end
end
