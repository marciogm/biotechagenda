class AddCategoriasToEventos < ActiveRecord::Migration
  def change
    add_reference :eventos, :categoria, index: true
  end
end
