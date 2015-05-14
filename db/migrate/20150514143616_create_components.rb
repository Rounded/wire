class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :page_id
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
