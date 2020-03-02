class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name, limit: 45

      t.timestamps
    end
  end
end
