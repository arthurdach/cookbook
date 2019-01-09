class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :course
      t.string :restriction
      t.string :photo
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
