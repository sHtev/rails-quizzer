class AddAnswerTypeToQuestion < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE questions_answer_type AS ENUM ('multiple', 'boolean', 'free');
    SQL
    add_column :questions, :answer_type, :questions_answer_type
  end

  def down
    remove_column :questions, :answer_type
    execute <<-SQL
      DROP TYPE questions_answer_type;
    SQL
  end
end
