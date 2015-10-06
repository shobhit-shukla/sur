class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.text :description
      t.integer :instrument_type_id

      t.timestamps
    end
  end
end
