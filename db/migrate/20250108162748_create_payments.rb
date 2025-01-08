class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
