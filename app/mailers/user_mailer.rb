class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Just reminders that your favorite show is about to begin in next 30 min enjoy')
  end
end
