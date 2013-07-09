class Tasks_Contacts < ActiveRecord::Base
  has_many :tasks
  has_many :contacts
end