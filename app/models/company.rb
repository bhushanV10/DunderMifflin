class Company < ApplicationRecord
  has_many :users

  enum role: [:buyer, :supplier]

  validates_presence_of :name, :role
  validates_uniqueness_of :name
end
