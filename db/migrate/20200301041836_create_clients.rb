class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :social_reason
      t.string :address
      t.string :giro
      t.references :comune, foreign_key: true

      t.timestamps
    end
  end
end
