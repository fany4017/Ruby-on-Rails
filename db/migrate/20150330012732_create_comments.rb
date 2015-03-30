class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
			t.string :user_id
			t.integer :post_id
			t.string :content

      t.timestamps
    end
  end
end
