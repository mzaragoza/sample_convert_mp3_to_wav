class CreateMusic < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string  :name,               null: false, default: ""
      t.string  :song,               null: false, default: ""

      t.timestamps null: false
    end
  end
end
