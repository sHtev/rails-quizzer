class ChangeSlugInQuiz < ActiveRecord::Migration[6.0]
  def change
    change_column_null :quizzes, :slug, false
    add_index :quizzes, :slug, unique: true
  end
end
