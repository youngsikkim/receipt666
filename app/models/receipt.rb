class Receipt < ActiveRecord::Base
  attr_accessible  :amount, :classification, :date, :name, :user_id ,:address ,:latitude,:longitude, :gmaps,:country,:city,:street
  acts_as_gmappable
  
  belongs_to :user
  
  def gmaps4rails_address
  # #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
      "#{self.street}, #{self.city}, #{self.country}" 
    # address
  end
  
end
