class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new

  end

  def create
    todo = Todo.new
    todo.task = params[:task]
    todo.task_description = params[:task_description]
    todo.save
    redirect_to '/todos'
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
    todo.task_description = params[:task_description]
    todo.save
    redirect_to "/todos/#{todo.id}"

  end

end