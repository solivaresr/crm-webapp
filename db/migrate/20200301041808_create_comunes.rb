class CreateComunes < ActiveRecord::Migration[5.2]
  def change
    create_table :comunes do |t|
      t.string :name, limit: 45
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
