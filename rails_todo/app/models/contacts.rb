class Contact < ActiveRecord::Base
  attr_accessor :first_name, :last_name

    has_many :todos
end