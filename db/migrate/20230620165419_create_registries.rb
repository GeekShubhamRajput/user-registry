class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :name
      t.string :location
      t.boolean :state, default: true

      t.timestamps
    end
  end
end
