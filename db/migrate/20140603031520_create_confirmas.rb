class CreateConfirmas < ActiveRecord::Migration
  def change
    create_table :confirmas do |t|
      t.references :evento, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
