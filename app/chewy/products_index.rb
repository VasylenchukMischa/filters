class ProductsIndex < Chewy::Index
  index_scope Product
  field :name
  field :description
  field :price, type: 'scaled_float', "scaling_factor": 100
  field :data, type: 'object'
end
