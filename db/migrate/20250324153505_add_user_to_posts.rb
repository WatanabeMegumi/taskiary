class AddUserToPosts < ActiveRecord::Migration[7.1]
  def change
    # user_id カラムが既に存在する場合のみ外部キー制約を追加
    unless column_exists?(:posts, :user_id)
      add_reference :posts, :user, null: false, foreign_key: true
    end
  end
end
