class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title
      t.timestamps
    create_table :ragots_tags do |t|
      t.belongs_to :tag
      t.belongs_to :ragot
    end
    end
  end
end
