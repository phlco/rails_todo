class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new

  end

  def create
    name = params[:name]
    description = params[:description]
    todo = Todo.new
    todo.name = name
    todo.description = description
    todo.save
    redirect_to '/todos/'
  end

  def show
    name = params[:name]
    description = params[:description]
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.name = params[:name]
    todo.description = params[:description]
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