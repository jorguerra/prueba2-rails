class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :progress
  has_many :tasks, through: :progress

  def has_task?(task)
    self.tasks.each do |t|
      return true if t ==task
    end
    false
  end
end
