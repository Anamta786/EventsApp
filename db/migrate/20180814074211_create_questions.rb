# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :ques
      t.references :event, foreign_key: true
      t.timestamps
    end
  end
end
