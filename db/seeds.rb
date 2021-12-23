Chewy.strategy(:atomic) do
  FactoryBot.create_list(:category, 3)
  FactoryBot.create_list(:brand, 3).each do |brand|
    Category.all.each do |category|
      FactoryBot.create(:product, brand: brand, category: category)
    end
  end
end