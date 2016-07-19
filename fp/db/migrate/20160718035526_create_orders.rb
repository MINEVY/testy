class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :amount
      t.string :size
      t.boolean :is_oneside
      t.string :product_type
      t.integer :order_type
      t.boolean :is_reprint
      t.string :assignee
      t.string :customer_name
      t.string :paper
      t.string :machine
      t.text :note
      t.date :proof_date
      t.date :koryo_date
      t.date :print_date
      t.date :bookbind_date

      t.timestamps null: false
    end
  end
end
