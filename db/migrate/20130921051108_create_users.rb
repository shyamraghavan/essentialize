class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :handle
      add_index :users, :handle, unique: true
      t.timestamps
    end
  end
end
