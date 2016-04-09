class MouList < ActiveRecord::Base
  has_many :mou_items
  validates :title, presence: true
  validates :description, presence: true
end
