class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def new

	end

	def create
		urgent = params[:urgent]
		task = Task.new
		task.todo = params[:todo]
		task.description = params[:description]
		task.due = params[:due]
		if urgent == 'on'
			urgent = true
		else
			urgent = false
		end
		task.urgent = urgent
		task.save
		redirect_to('/tasks')
	end

	def show
		@task=Task.find(params[:id])
	end

	def edit
		@task=Task.find(params[:id])
	end

	def update
		urgent = params[:urgent]
		task=Task.find(params[:id])
		task.todo = params[:todo]
		task.description = params[:description]
		task.due = params[:due]
		if urgent == 'on'
			urgent = true
		else
			urgent = false
		end
		task.urgent = urgent
		task.save
		redirect_to('/tasks')		
	end

	def destroy
		Task.find(params[:id]).delete
		redirect_to('/tasks')
	end
end