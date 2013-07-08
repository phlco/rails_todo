class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def edit
  end

  def show
    @task = Todo.find(params[:id])
  end

  def create
    new_task = Todo.new
    new_task.name = params[:name]
    new_task.note = params[:note]
    new_task.save
    redirect_to('/todos')
  end

  def destroy
    task_to_delete = Todo.find(params[:id])
    task_to_delete.destroy
    redirect_to('/todos')
  end

end
