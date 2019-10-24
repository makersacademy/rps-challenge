require 'pony'
require 'erb'

class Email

  def self.send_greeting_email
    Pony.mail(
      :to => 'themakersbnb@gmail.com',
      # from: "MyApp Help Desk <noreply@myapp.com>",
      :from => "MyApp Help Desk <noreply@myapp.com>",
      :subject => "Thank you for signing up",
      :body => "Thank you for signing up to MakersBnB.  We look forward to finding you some fantastic houses for your future stays." +
            "If you did not make sign up to MakersBnB, please ignore this email.",
      :via => :smtp,
      :via_options => {
        :address => 'smtp.sendgrid.net',
        :port => '587',
        :user_name => ENV['SENDGRID_USERNAME'],
        :password => ENV['SENDGRID_PASSWORD'],
        :authentication => :plain,
        :enable_starttls_auto => true,
        :domain => "rps-game26.herokuapp.com"
      }
    )
      # html_body: haml(
      #   :verify_account_email,
      #   layout: false,
      #   locals: {
      #     date: DateTime.now.strftime("%H:%M:%S%P %B %d, %Y"),
      #   }
      # )
  end
end
