class Listing < ApplicationRecord

  belongs_to :category

  validates :title, presence: true
  validates :body, length: {minimum: 10}


  def to_param

    id.to_s + "-" + title.parameterize

  end

end
