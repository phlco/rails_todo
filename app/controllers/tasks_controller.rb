class TasksController < ApplicationController

def index
  @tasks = Task.all
end

def new
  task_info = params[:task_info]
  due_date = params[:due_date]
end

def create
  task_info = params[:task_info]
  due_date = params[:due_date]
  task = Task.new
  task.task_info = task_info
  task.due_date = due_date
  task.save
  redirect_to('/tasks')
end

def edit
  @task = Task.find(params[:id])
  task_info = params[:task_info]
  due_date = params[:due_date]
end


def show
  @task = Task.find(params[:id])
end



end