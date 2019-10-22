class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.date       :expiration_date
      t.string     :number
      t.integer    :stamp
      t.integer    :status
      t.references :account

      t.timestamps
    end
  end
end
