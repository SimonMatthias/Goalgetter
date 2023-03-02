class CreateYearlygoals < ActiveRecord::Migration[7.0]
  def change
    create_table :yearlygoals do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.references :fiveyeargoal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
