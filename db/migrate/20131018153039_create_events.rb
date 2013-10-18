class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_hint_title
      t.text :event_hint_descr
      t.string :event_hint_pic
      t.integer :event_timer
      t.string :event_title
      t.text :event_descr
      t.string :event_pic

      t.timestamps
    end
  end
end
