class User < ApplicationRecord
  belongs_to :company

  enum role: [:sales, :marketing, :purchasing, :executive]

  validates_presence_of :name, :role, :company
  validates_uniqueness_of :name
end
