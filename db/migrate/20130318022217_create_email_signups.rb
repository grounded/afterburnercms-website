class CreateEmailSignups < ActiveRecord::Migration
  def change
    create_table :email_signups do |t|
      t.string :name, :null => false
      t.string :email, :null => false
    end
  end
end
