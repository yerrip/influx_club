class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :category
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
