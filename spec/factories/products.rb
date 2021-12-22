# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(10, 2)   default("0.0")
#  category_id :integer
#  brand_id    :integer
#  data        :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_brand_id     (brand_id)
#  index_products_on_category_id  (category_id)
#

FactoryBot.define do
  factory :product do
    name { Faker::Company.name }
    price { Faker::Commerce.price }
    brand
    category

    data do
      {}.tap do |data|
        self.category.template.each_key do |character|
          data[character] = Faker::App.name
        end
      end
    end
  end
end
