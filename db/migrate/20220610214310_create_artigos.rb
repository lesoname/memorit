class CreateArtigos < ActiveRecord::Migration[7.0]
  def change
    create_table :artigos do |t|
      t.string :title
      t.text :contents

      t.timestamps
    end
  end
end
