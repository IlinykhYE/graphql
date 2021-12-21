class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :room_type
      t.string :description
      t.belongs_to :resort, foreign_key: true
      t.timestamps
    end
  end
end
