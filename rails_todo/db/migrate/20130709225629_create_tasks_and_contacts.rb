class CreateTasksAndContacts < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :name
      t.string :info
      t.boolean :done
      t.timestamps
    end

    create_table :contacts do |t|
      t.string :name
      t.timestamps
    end

    create_table :tasks_contacts do |t|
      t.belongs_to :task
      t.belongs_to :contact
    end
  end

  def down
    drop_table :tasks
    drop_table :contacts
    drop_table :tasks_contacts
  end
end
