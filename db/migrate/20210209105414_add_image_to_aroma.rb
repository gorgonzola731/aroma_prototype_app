class AddImageToAroma < ActiveRecord::Migration[6.1]
  def change
    add_column :aromas, :image, :string
  end
end
