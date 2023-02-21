# frozen_string_literal: true

class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name, null: false
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
