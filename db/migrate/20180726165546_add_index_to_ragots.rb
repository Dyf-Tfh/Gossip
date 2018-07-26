class AddIndexToRagots < ActiveRecord::Migration[5.2]
  def change
    add_reference :ragots, :user, foreign_key: true
  end
end
