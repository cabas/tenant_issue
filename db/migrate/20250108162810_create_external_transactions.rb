class CreateExternalTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :external_transactions do |t|
      t.timestamps
      t.integer :amount
      t.references :account, null: false, foreign_key: true
    end
  end
end
