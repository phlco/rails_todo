class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    name = params[:task]

    task = Task.new
    task.name = name
    task.save

    redirect_to '/tasks'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.name = params[:task]
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    task.save
    redirect_to "/tasks"
  end

end