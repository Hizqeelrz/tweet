class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
