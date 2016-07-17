class OrderSetItem < ActiveRecord::Base
  validates :name, presence: true
  has_many :comments

  has_many :children, class_name: 'OrderSetItem', foreign_key: 'parent_id'

  # def children
  #   self.class.where(parent_id: id)
  # end

end
