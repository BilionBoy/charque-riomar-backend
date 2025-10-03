class CreateTiposUsuarios < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:tipos_usuarios)
      create_table :tipos_usuarios do |t|
       t.string :descricao

       t.timestamps
      end
    end
  end

  def down
    drop_table :tipos_usuarios if table_exists?(:tipos_usuarios)
  end
end