class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user # We need the instance variable for the view
    mail to: @user.email, subject: "Account activation"
  end

  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
