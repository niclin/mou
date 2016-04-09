class MouItem < ActiveRecord::Base
  belongs_to :mou_list
  validates :content, presence: true

  def completed?
  	!completed_at.blank?
  end
end
