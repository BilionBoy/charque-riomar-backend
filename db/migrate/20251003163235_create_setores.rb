class CreateSetores < ActiveRecord::Migration[7.2]
  def change
    create_table :setores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
