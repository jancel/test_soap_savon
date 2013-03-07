class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :echo

      t.timestamps
    end
  end
end
