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
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.name = params[:name]
    todo.description = params[:description]
    todo.do_by = params[:do_by]
    todo.done = params[:done]
    todo.save
    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to "/todos"
  end
end