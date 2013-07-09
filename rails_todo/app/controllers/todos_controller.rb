class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def create
    todo = Todo.find(params[:id])
  end

  def show
    name = params[:name]
    description = params[:description]
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.name = params[:name]
    todo.description = params[:age]
    todo.save
    redirect_to "/todos/#{todo.id}"

  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end
end