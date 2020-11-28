class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :description
      t.text :media_link, limit: 2000
      t.text :reveal_media_link, limit: 2000
      t.text :correct_answers, array: true
      t.text :incorrect_answers, array: true
      t.references :category, null: false, foreign_key: true

      t.belongs_to :round, null: false, foreign_key: true

      t.timestamps
    end
  end
end
