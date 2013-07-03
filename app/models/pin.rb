class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  belongs_to :user
end
