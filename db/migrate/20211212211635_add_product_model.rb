class AddProductModel < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.json :template

      t.timestamps
    end

    create_table :brands do |t|
      t.string :name

      t.timestamps
    end

    create_table :products, force: :cascade do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2, default: BigDecimal(0)
      t.references :category
      t.references :brand
      t.json :data

      t.timestamps
    end
  end
end
