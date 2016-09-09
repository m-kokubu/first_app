class BooklistController < ApplicationController
  def index
    #全件表示
    @booklists = Booklist.all

  end

  def create
    @booklist = Booklist.new
  end

  def create_completed
    #新規登録完了
    @booklist = Booklist.new(booklist_params)
    if @booklist.save
      redirect_to action: 'index'
    else
      render action:'create'
    end
  end

  def edit
    #編集
    @booklist = Booklist.find(params[:id])
  end

  def editing_complete
    #編集完了
    @booklist = Booklist.find(params[:id])
    if @booklist.update(booklist_params)
      redirect_to action: 'index'
    else
      render action:'edit'
    end
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
