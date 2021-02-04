class Schedule < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :user
  
  with_options presence: true do
    validates :start_time
    validates :work
  end
end
