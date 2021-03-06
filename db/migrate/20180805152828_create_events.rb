# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :address
      t.integer :seats
      t.date :event_date

      t.timestamps
    end
  end
end
