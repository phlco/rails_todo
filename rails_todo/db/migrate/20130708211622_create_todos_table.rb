class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
    t.string :task
    t.string :location
    t.text :description
    end
  end

  def down
    drop_table :todos
  end
end
