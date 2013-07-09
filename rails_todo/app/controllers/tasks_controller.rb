class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    name = params[:name]
    info = params[:info]
    done = params[:done]

    @task = Task.new
    @task.name = name
    @task.info = info
    @task.done = done
    @task.save

    redirect_to '/tasks'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:name]
    @task.info = params[:info]
    @task.done = params[:done]
    @task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @task.save
    redirect_to "/tasks"
  end

end