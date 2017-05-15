class Contact < ApplicationRecord
	attr_accessor :name
	attr_accessor :email
	attr_accessor :message
   	attribute :nickname,  :captcha  => true

   	validates_presence_of     :name
   	validates_presence_of     :email
   	validates_presence_of     :message
 
   # Declare the e-mail headers. It accepts anything the mail method
   # in ActionMailer accepts.
   def headers
     {
       :subject => "My Contact Form",
       :to => "compartsbdx@gmail.com",
       :from => %("#{name}" <#{email}>)
     }
   end
end
