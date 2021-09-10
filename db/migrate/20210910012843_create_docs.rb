class CreateDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :docs do |t|
      t.string :title
      t.string :description
      t.string :tag1
      t.string :tag2
      t.string :attachment

      t.timestamps
    end
  end
end
