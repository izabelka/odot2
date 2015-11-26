class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  
  validates :content, presence: true
  validates :content, length: { minimum: 2 }
  
  
  def completed?
    !completed_at.blank?
  end
end
