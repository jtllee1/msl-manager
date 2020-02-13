class AddReferenceToFirstTrinket < ActiveRecord::Migration[6.0]
  def change
    drop_table :first_trinkets
    drop_table :second_trinkets
    drop_table :third_trinkets
  end
end
