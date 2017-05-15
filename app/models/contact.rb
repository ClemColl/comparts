class Contact < ApplicationRecord
	attr_accessor :name,      :validate => true
	attr_accessor :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
   	attribute :nickname,  :captcha  => true
 
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
