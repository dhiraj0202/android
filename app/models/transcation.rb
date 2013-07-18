class Transcation < ActiveRecord::Base
  attr_accessible :amount, :title, :user_id
  belongs_to :user
end
