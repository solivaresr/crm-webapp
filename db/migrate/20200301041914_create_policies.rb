class CreatePolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :policies do |t|
      t.float :prime
      t.date :start_date
      t.date :end_date
      t.float :comision
      t.string :payment_type, limit: 45
      t.references :product, foreign_key: true
      t.references :client, foreign_key: true
      t.references :sale_executive, foreign_key: true

      t.timestamps
    end
  end
end
