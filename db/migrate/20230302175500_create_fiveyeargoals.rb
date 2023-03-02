class CreateFiveyeargoals < ActiveRecord::Migration[7.0]
  def change
    create_table :fiveyeargoals do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
