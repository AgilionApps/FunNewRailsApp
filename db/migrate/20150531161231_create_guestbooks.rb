class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.string :username
      t.text :body

      t.timestamps null: false
    end
  end
end
