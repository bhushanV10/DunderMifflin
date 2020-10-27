class Company < ApplicationRecord
  has_many :users, dependent: :destroy

  enum role: [:buyer, :supplier]

  validates_presence_of :name, :role
  validates_uniqueness_of :name

  scope :all_companies, -> {left_outer_joins(:users).distinct.select("companies.*, count(users.*) as users_count").group(:id).order(users_count: :desc, name: :asc).limit(10)}
  scope :filter_by_company_role, ->(role) { left_outer_joins(:users).where(role: role).distinct.select("companies.*, count(users.*) as users_count").group(:id).order(users_count: :desc, name: :asc).limit(10)}
  scope :filter_by_user_role, ->(role) { joins(:users).where("users.role": role).distinct.select("companies.*, count(users.*) as users_count").group(:id).order(users_count: :desc, name: :asc).limit(10)}
  scope :company_roles_count, -> {group(:role).count}

end
