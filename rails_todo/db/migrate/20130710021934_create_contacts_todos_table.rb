class CreateContactsTodosTable < ActiveRecord::Migration
  def up
    create_table :contacts_todos, :id => false do |t|
      t.belongs_to :contact
      t.belongs_to :todo
    end
  end

  def down
    drop_table :contacts_todos
  end
end
