class TodosController < ApplicationController

  def index
    @todos = TodoTable.all
  end

  def new

  end

  def create
    todo = TodoTable.new
    todo.task = params[:task]
    todo.task_description = params[:task_description]
    todo.save
  end
end