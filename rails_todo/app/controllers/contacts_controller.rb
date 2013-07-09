class ContactsController < ApplicationController
  def index
    @contacts.all
  end

  def create
    contact = Contact.new
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.save
    redirect_to '/contacts'
  end

  def edit
    @contact = contact.find(params[:id])
  end

  def update
    contact = Contact.new
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.save
    redirect_to '/contacts'
  end

  def destroy
    contact = contact.find(params[:id])
    contact.destroy
    redirect_to '/todos'
  end




end