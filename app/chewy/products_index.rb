class ProductsIndex < Chewy::Index
  index_scope Product.includes(:brand, :category)
  field :name
  field :description, type: 'object'
  field :price, type: 'scaled_float', "scaling_factor": 100
  field :data, type: 'object'
  field :brand do
    field :name
  end
  field :category do
    field :name
  end
end
