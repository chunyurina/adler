class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id, null: false ,foreign_key: true
      t.text :memo
      t.integer :category_id
      t.timestamps
    end
  end
end
