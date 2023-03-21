class AddUserToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :user_id, :integer, null:false, default: 1 
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
