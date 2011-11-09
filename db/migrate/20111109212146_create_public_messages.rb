class CreatePublicMessages < ActiveRecord::Migration
  def change
    create_table :public_messages do |t|
      t.string :from
      t.text :content

      t.timestamps
    end
  end
end
