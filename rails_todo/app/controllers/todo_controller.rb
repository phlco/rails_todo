class TodoController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    task = params[:task]
    location = params[:location]
    description = params[:description]
    todo = Todo.new
    todo.task = task
    todo.location = location
    todo.description = description
    todo.save
    redirect_to ('/todos')
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.task = params[:task]
    todo.location = params[:location]
    todo.description = params[:description]
    todo.save
    redirect_to ('/todos')
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to ('/todos')
  end
end