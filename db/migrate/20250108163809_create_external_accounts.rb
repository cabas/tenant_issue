class CreateExternalAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :external_accounts do |t|
      t.timestamps
    end
  end
end
