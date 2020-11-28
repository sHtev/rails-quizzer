class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :title
      t.string :type
      t.integer :round_no
      t.string :round_type
      t.belongs_to :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
