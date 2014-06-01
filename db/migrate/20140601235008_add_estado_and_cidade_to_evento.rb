class AddEstadoAndCidadeToEvento < ActiveRecord::Migration
  def change
    add_reference :eventos, :estado, index: true
    add_reference :eventos, :cidade, index: true
  end
end
