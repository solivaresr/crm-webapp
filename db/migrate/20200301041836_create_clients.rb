class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :social_reason, limit: 150
      t.string :address, limit: 90
      t.string :giro, limit: 45
      t.references :comune, foreign_key: true

      t.timestamps
    end
  end
end
