class AddMediaTypeToCategory < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE category_type AS ENUM ('audio', 'video', 'image', 'text');
    SQL
    add_column :categories, :media_type, :category_type
  end

  def down
    remove_column :categories, :media_type
    execute <<-SQL
      DROP TYPE category_type;
    SQL
  end
end
