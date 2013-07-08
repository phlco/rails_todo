class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def edit
    @task = Todo.find(params[:id])
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

  def update
    task_to_edit = Todo.find(params[:id])
    task_to_edit.name = params[:name]
    task_to_edit.note = params[:note]
    task_to_edit.save
    redirect_to("/todos/#{params[:id]}")
  end

end
