class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true
      t.text :content
      t.date :post_date

      t.timestamps
    end
  end
end
