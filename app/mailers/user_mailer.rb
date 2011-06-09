class UserMailer < ActionMailer::Base
  default :from => "ggarateramirez@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["granpa.png"] = File.read("#{Rails.root}/public/images/granpa.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registro en granPa.com")
  end
end

