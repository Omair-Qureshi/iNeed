class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :quantity
      t.string :status
      t.datetime :delivery_time
      t.string :description
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
