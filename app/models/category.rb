# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  template   :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  STRING = "string".freeze
  NUMBER = "number".freeze

  DATATYPES = [STRING, NUMBER]

  has_many :products

  validates :name, presence: true
end
