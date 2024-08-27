class ChangeUserIdInArticles < ActiveRecord::Migration[7.2]
  def up
    add_reference :articles, :user, foreign_key: true, null: true
    change_column_null :articles, :user_id, false
  end

  def down
    remove_reference :articles, :user, foreign_key: true
  end
end
