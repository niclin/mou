class MouItem < ActiveRecord::Base
  belongs_to :mou_list
  validates :content, presence: true
end
