class CreateStringCalculators < ActiveRecord::Migration[6.1]
  def change
    create_table :string_calculators do |t|
      t.string :name

      t.timestamps
    end
  end
end
