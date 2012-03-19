class Registration < ActiveRecord::Base
  validates_presence_of :name, :surname, :student_id,  :password, :campus

  validates :id_no, :presence => true, :uniqueness => true
 #validates_confirmation_of :email_address, :message => "should match confirmation" validates :password, :presence => true, :confirmation => true
 # validates :email_validation      :presence => true
 validates_length_of :password , :minimum=>6, :message => "password should have at least 6 letters "


  validates       :email,
                  :presence => true,
                  :uniqueness => true


  validates_format_of  :email,
                        :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  ,
                        :message => "invalid email address"
end
