class Task < ActiveRecord::Base
  belongs_to :user
  has_one :user
  has_one :assignment
  has_many :task_applications
end
