class CreateMicroports < ActiveRecord::Migration
  def change
    create_table :microports do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
