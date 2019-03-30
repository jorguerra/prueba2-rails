class Task < ApplicationRecord
  has_many :progress
  has_many :users, through: :progress
  
end
