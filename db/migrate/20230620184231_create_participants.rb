class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :gender
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
