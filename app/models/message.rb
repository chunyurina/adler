class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :question
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :yesno
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  belongs_to :user
end
