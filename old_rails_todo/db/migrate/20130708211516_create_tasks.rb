class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :info
      t.boolean :done

      t.timestamps
    end
  end
end
