class CreateCommunities < ActiveRecord::Migration[7.2]
  def change
    create_table :communities do |t|
      t.string :title
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
