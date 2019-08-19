class BouquetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bouquet_mailer.email_bouquet.subject
  #
  # to send a bouquet I need the sender, the reciever, and the bouquet
  def email_bouquet
    @user = User.first
    @bouquet = Bouquet.first
    @email = "chocobo4991@gmail.com"
    mail to: @email, subject: "#{@user.username} sent you a bouquet!"
  end

end
