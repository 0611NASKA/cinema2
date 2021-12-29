class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|

      t.timestamps
    end
  end
end
