class RemoveImgFromAroma < ActiveRecord::Migration[6.1]
  def change
    remove_column :aromas, :img, :string
  end
end
