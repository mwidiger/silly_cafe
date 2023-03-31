class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :name, index:true

      t.timestamps
    end
  end
end
