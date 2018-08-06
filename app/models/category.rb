class Category < ApplicationRecord

  has_many :listings

  validates :title, presence: true

  def to_param

id.to_s + "-" + title.parameterize

end

end
