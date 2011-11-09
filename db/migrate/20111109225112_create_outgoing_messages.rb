class CreateOutgoingMessages < ActiveRecord::Migration
  def change
    create_table :outgoing_messages do |t|
      t.string :from
      t.text :content

      t.timestamps
    end
  end
end
