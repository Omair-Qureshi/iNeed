class AddCompletedToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :completed, :boolean, default: false
  end
end
