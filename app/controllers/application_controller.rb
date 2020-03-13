class ApplicationController < ActionController::Base
  def send_mailer
  	@user=User.all
  	time = @user.show.time
  	Notifier.delay(run_at: 30.minutes.from).signup(time)
    # send email 30 min before show time
  end
  handle_asynchronously :send_mailer, :priority => 20
end
