class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :question
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :yesno
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  belongs_to :user

  validates :memo, null: false
  validates :category_id, null: false
end
