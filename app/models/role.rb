class Role < ApplicationRecord
  #has_many :multiroles
  #has_many :users, through: :multiroles
  has_and_belongs_to_many :users
end
