class CreateComediansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :birthplace
      t.text :image_url

      t.timestamps
  end
end
