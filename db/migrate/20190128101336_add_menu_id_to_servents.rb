class AddMenuIdToServents < ActiveRecord::Migration[5.2]
  def change
    add_reference :servents, :menu, foreign_key: true
  end
end
