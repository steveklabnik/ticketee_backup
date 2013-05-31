class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :asset
      t.references :ticket

      t.timestamps
    end

    remove_column :tickets, :asset
  end
end
