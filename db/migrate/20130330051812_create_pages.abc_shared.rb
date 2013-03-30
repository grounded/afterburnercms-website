# This migration comes from abc_shared (originally 1)
class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, :null => false
    end
  end
end
