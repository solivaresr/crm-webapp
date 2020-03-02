class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, limit: 45
      t.string :description

      t.timestamps
    end
  end
end
