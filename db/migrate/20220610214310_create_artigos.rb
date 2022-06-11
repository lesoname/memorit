class CreateArtigos < ActiveRecord::Migration[7.0]
  def change
    create_table :artigos do |t|
      t.string :título
      t.text :conteúdo

      t.timestamps
    end
  end
end
