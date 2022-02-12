class CreateOneclicks < ActiveRecord::Migration[5.2]
  def change
    create_table :oneclicks do |t|
      t.string :name

      t.timestamps
    end
  end
end
