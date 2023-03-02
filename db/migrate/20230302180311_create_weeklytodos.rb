class CreateWeeklytodos < ActiveRecord::Migration[7.0]
  def change
    create_table :weeklytodos do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.references :quarterlygoal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
