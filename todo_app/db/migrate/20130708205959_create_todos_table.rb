class CreateTodosTable < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.string :description
      t.string :due_date
      t.boolean :completed, default: false
    end
  end
end
