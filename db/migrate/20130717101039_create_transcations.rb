class CreateTranscations < ActiveRecord::Migration
  def change
    create_table :transcations do |t|
      t.string :amount
      
      t.string :title
     

      t.timestamps
    end
  end
end
