class CreateAromas < ActiveRecord::Migration[6.1]
  def change
    create_table :aromas do |t|
      t.string :aroma_name
      t.string :explain
      t.string :img

      t.timestamps
    end
  end
end
