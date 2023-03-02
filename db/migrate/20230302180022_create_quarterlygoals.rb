class CreateQuarterlygoals < ActiveRecord::Migration[7.0]
  def change
    create_table :quarterlygoals do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.references :yearlygoal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
