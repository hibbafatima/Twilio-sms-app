# app/jobs/send_sms_job.rb
class SendSmsJob < ApplicationJob
  queue_as :default

  def perform(user)
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.messages.create(
      from: twilio_phone_number,
      to: user.phone_number,
      body: "Hello #{user.name}, welcome to our platform!"
    )
  end

  private

  def account_sid
    Rails.application.credentials.twilio[:account_sid]
  end

  def auth_token
    Rails.application.credentials.twilio[:auth_token]
  end

  def twilio_phone_number
    Rails.application.credentials.twilio[:phone_number]
  end
end
