class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    task = params[:task]
    description = params[:description]
    due_date = params[:due_date]
    todo = Todo.new
    todo.task = task
    todo.description = description
    todo.due_date = due_date
    todo.save
    redirect_to('/todos')
  end

  def show
    @todo = Todo.find(params[:id])
  end

end