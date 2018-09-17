class CreateDisasters < ActiveRecord::Migration[5.2]
  def change
    create_table :disasters do |t|
      t.string :name
      t.text :description
      t.text :before
      t.text :during
      t.text :after
      t.text :basic
      t.text :basic2
      t.text :basic3
      t.text :similar
      t.string :regions

      t.timestamps
    end
  end
end
