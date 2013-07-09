TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    name = params[:name]
    todo = Todo.new
    todo.name = name
    todo.description = description
    todo.do_by = do_by
    todo.done = done
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