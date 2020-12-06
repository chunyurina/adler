class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false ,foreign_key: true
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.timestamps
    end
  end
end
