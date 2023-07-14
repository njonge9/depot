class ChangeStringFieldToText < ActiveRecord::Migration[7.0]
  def change
    change_column :product, :description, :text
  end
end
