class ChangeDataExplainToAromas < ActiveRecord::Migration[6.1]
  def change
    change_column :aromas, :explain, :text
  end
end
