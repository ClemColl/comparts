class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Message depuis la page Contact !",
      :to => "compartsbdx@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end