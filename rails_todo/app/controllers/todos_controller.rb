class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def create

  end

  def show
    @todo = Todo.find(params[:id])
  end

  def update

  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def destroy

  end
end