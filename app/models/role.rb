class Role < ApplicationRecord
  has_many :role_assignations
  has_many :users, through: :role_assignations
  has_many :permissions
end
