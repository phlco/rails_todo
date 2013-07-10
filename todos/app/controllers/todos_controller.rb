class TodosController < ApplicationController

def index
    @todos = Todo.all
  end

  def new
    @contacts = Contact.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def create
    todo = Todo.new
    todo.title = params[:title]
    todo.description = params[:description]
    todo.contacts << Contact.find(params[:contact])
    todo.save
    redirect_to '/todos'
  end

  def edit
    @todo = Todo.find(params[:id])
    @contacts = Contact.all
  end

  def update
    todo = Todo.find(params[:id])
    todo.title = params[:title]
    todo.description = params[:description]
    new_contact = Contact.find(params[:contact_id])
    unless todo.contacts.include?(new_contact)
          todo.contacts << new_contact
          todo.save
    end
    redirect_to('/todos')
  end

  def destroy
    todo= Todo.find(params[:id])
    todo.destroy
    redirect_to('/todos')
  end
end
