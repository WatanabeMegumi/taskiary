class RemoveForeignKeyFromTasks < ActiveRecord::Migration[7.1]
  def change
    # 外部キーが存在する場合にのみ削除を行う
    if foreign_key_exists?(:tasks, :posts)
      remove_foreign_key :tasks, :posts
    end
  end
end
