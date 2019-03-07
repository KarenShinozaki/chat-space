class Group < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :messages

  validates :name, presence: true

  attr_accessor :current_user_id
end
