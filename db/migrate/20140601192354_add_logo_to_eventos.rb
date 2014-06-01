class AddLogoToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :logo, :string
  end
end
