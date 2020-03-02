class CreateSaleExecutives < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_executives do |t|
      t.string :name, limit: 45
      t.string :email, limit: 45
      t.string :password, limit: 45

      t.timestamps
    end
  end
end
