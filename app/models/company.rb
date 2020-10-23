class Company < ApplicationRecord
  has_many :users

  enum role: [:buyer, :supplier]
end
