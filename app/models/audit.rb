class Audit < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "created_by"
  
  has_many :findings, dependent: :destroy
  enum status: { open: 0, in_progress: 1, closed: 2 }
  validates :title, :status, presence: true
end
