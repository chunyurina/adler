class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.integer :first_answer, null: false
      t.integer :second_answer, null: false
      t.integer :third_answer, null: false
      t.timestamps
    end
  end
end
