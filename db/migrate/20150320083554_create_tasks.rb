class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status
      t.references :user, index: true
      t.date :task_date
      t.time :task_time
      t.string :address
      t.string :city
      t.string :zip
      t.text :long_description
      t.string :short_description

      t.timestamps
    end
  end
end
