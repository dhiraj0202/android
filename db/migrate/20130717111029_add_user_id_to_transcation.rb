class AddUserIdToTranscation < ActiveRecord::Migration
  def change
  	add_column :transcations, :user_id, :integer
  end
end
