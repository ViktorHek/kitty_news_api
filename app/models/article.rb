class Article < ApplicationRecord
  validates_presence_of :title, :lead, :body
  belongs_to :category
end
