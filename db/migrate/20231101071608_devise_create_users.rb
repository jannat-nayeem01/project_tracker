# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  
  def change
    unless table_exists?(:projects)
      create_table :projects do |t|
        # Define your project table columns here
        t.string :name
        t.string :url

        t.timestamps
      end
    end
  end

end
