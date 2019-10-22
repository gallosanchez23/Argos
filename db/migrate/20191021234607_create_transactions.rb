class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.text       :description
      t.float      :quantity
      t.integer    :type
      t.timestamp  :datetime
      t.references :account
      t.references :currency

      t.timestamps
    end
  end
end
