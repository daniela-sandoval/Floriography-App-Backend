# Module 5 Final: Floriography API

Floriography is an app that allows users to create boquets based on the language of flowers. Florigraphy's backend holds 100+ seeded flowers including their meanings and the adjectives/tones they are associated with. The backend also calls upon the third party API Watson Tone Analyzer allowing users to create bouquets based on input. 

This is a Ruby on Rails API created using ActiveRecord.

## How to Install Florigraphy API
1. Use your terminal to navigate into the place where you want to clone Florigraphy API's directory and `git clone` the url.
2. In terminal run `bundle install` in order to install the necessary gems needed to run the backend.
3. Once you are ready, run you need to set up your database (this API uses PostgresSQL) by running `rails db:create`.
4. Run command `rails db:migrate && rails db:seed` in order to set up the tables and the necessary seeded files.
5. Finally, run `rails s` and copy the url in your terminal (more than likely localhost:3000) and open up your browser using the url.
6. Going to urls such as `/flowers`, `/bouquets`, `/tones`,  `favorites`, and `adjectives` leads to data in json format.

## How to Use Medical Tracker
Floriography API is needed in order to give the Florigraphy Application (frontend) the ability to:
* Create, delete, and read bouquets based on adjectives.
* Bouquets can also be created with user input by contacting the third party API Watson Tone Analyzer in the bouquet controller.
* User's can also email a bouquet to another user by using Florigraphy API's ActionMailer. 
* Structures an email template of a requested bouquet using HTML, inline CSS, and ERB tags.
* Users can also create, read, update, and delete their account through the user's controller.
* Florigraphy API also accounts for authorization by using by administering and looking for Javascript Web Tokens. 

## Developer
* Daniela Sandoval

## More About Our App
Floriography requires ActiveRecord and gems such as CORS, Bcrypt, Postgres, IBM Watson, JWT, and Ruby 2.6.1.

You can find the live version at: http://floriography-app-api.herokuapp.com

### License
This project is licensed under the Learn.co Educational Content License. Please read `LICENSE.md` location in the directory or click on the following link (http://learn.co/content-license) for further details.
