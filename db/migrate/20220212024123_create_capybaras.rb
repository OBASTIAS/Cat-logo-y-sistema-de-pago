class CreateCapybaras < ActiveRecord::Migration[5.2]
  def change
    create_table :capybaras do |t|

      t.timestamps
    end
  end
end
