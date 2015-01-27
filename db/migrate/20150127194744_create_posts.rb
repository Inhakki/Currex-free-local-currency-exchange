class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.boolean :is_request
      t.string :title
      t.string :zip_code
      t.string :currency_type
      t.float :cash_amount
      t.references :user
    end
  end
end
