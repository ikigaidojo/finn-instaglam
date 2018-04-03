class AddAvatarToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :avatar_id, :string
    add_column :members, :avatar_filename, :string
    add_column :members, :avatar_content_size, :string
    add_column :members, :avatar_content_type, :string
  end
end
