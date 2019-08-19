class BouquetMailerPreview < ActionMailer::Preview
# Preview at http://localhost:3000/rails/mailers/bouquet_mailer

  def email_bouquet
    # dont forget to put fake data
    BouquetMailer.email_bouquet
  end

end
