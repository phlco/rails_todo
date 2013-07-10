class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    @task = Task.new
    @task.name = params[:name]
    @task.info = params[:info]
    @task.done = params[:done]
    # @task.contacts << Contact.find(params[:contact])
    @task.save

    redirect_to '/tasks'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    @contacts = Contact.all
  end

  def update
    @task = Task.find(params[:id])
    @task.name = params[:name]
    @task.info = params[:info]
    @task.done = params[:done]
    new_contact = Contact.find(params[:contact_id])
    @task.contacts.each do |contact|
       unless contact.id == new_contact.id
           @task.contacts << new_contact
           @task.save
       end
     end
    # @task.save
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # @task.save
    redirect_to "/tasks"
  end

end