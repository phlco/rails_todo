class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    todo = Todo.new
    todo.name = params[:name]
    todo.description = params[:description]
    todo.do_by = params[:do_by]
    todo.done = params[:done]
    todo.save
    redirect_to "/todos"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end