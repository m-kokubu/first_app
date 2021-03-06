class BooklistController < ApplicationController
  def index
    #全件表示
    @booklists = Booklist.all
    @booklist = Booklist.new
  end

  # def create
  #   @booklist = Booklist.new
  # end

  def create_completed
    #新規登録完了
    @booklist = Booklist.new(booklist_params)
    if request.xhr? #tureだったらajax
       if @booklist.save
         render 
       else
         render 'error', object: @booklist
       end
    end
  end

  def edit
    #編集
    @booklist = Booklist.find(params[:id])
  end

  def editing_complete
    #編集完了
    @booklist = Booklist.find(params[:booklist][:id])
    @booklist.update(booklist_params)
    redirect_to action: 'index'
  end

  def delete
    #削除
    @booklist = Booklist.find(params[:id])
    @booklist.destroy
    redirect_to action: 'index'
  end

  private

  def booklist_params
    params.require(:booklist).permit(:name, :writer)
  end
end
