class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    new_task = Task.new
    new_task.name = params[:name]
    new_task.description = params[:description]
    new_task.save
    redirect_to '/tasks'
  end
end