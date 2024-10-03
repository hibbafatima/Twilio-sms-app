# app/models/user.rb
class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true

  after_create :send_welcome_sms

  private

  def send_welcome_sms
    SendSmsJob.perform_later(self)
  end

end
