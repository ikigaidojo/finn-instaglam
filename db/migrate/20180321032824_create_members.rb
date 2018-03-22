class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :mobile_phone

      t.timestamps
    end
  end
end
