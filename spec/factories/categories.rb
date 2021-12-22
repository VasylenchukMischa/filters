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

FactoryBot.define do
  factory :category do
    name { Faker::Company.name }
    template do
      {
        "size" => "string",
        "color" => "string",
        "country" => "string"
      }
    end
  end
end
