class BouquetMailerPreview < ActionMailer::Preview
# Preview at http://localhost:3000/rails/mailers/bouquet_mailer

  def email_bouquet
    # dont forget to put fake data
    sender = User.first
    email = "daniela.sandoval820@yahoo.com"
    bouquet = Bouquet.first
    BouquetMailer.email_bouquet(sender, email, bouquet)
  end

end
