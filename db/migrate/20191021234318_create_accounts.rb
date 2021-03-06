class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.float      :balance
      t.string     :bank
      t.string     :number
      t.integer    :type
      t.references :user

      t.timestamps
    end
  end
end
