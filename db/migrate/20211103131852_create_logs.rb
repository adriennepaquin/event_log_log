class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :src
      t.string :dst
      t.boolean :src_valid
      t.boolean :src_private
      t.boolean :dst_valid
      t.boolean :dst_private

      t.timestamps
    end
  end
end
