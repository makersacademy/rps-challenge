# Rock Paper Scissors Challenge(Makers Week3)

# To Use Application
- Fork this repo.
- Clone the repo to your computer.
- cd into rsp-challenge directory.
- run ``bundle install``.
- run ``rspec`` to test application.
- run ``rackup in terminal`` to run server.
- visit this **[url](http://localhost:9292/)**.
- You should see this image below.

<img width="400" alt="Screen Shot 2019-04-21 at 13 27 57" src="https://user-images.githubusercontent.com/37377831/56472795-10e8bb00-645b-11e9-8a56-2311b7055023.png">

- Click on get started.
- This should take you to a page that looks like this.

<img width="400" alt="Screen Shot 2019-04-21 at 13 28 42" src="https://user-images.githubusercontent.com/37377831/56472808-49889480-645b-11e9-849a-70026a288ad2.png">

- Enter your name as instructed the click on submit.
<img width="400" alt="Screen Shot 2019-04-21 at 13 28 57" src="https://user-images.githubusercontent.com/37377831/56472827-6329dc00-645b-11e9-916e-0ec6e21afe5c.png">

- This will take you to the start page.

<img width="401" alt="Screen Shot 2019-04-21 at 13 29 08" src="https://user-images.githubusercontent.com/37377831/56472878-08dd4b00-645c-11e9-9edc-862b89df8a2d.png">

- Now make a move by selecting a shape.

<img width="399" alt="Screen Shot 2019-04-21 at 13 29 27" src="https://user-images.githubusercontent.com/37377831/56472883-1a265780-645c-11e9-95b7-87f888816480.png">

- Click on submit.

<img width="401" alt="Screen Shot 2019-04-21 at 13 29 51" src="https://user-images.githubusercontent.com/37377831/56472912-78533a80-645c-11e9-82a9-d349e599b5fe.png">

- You should see the result on the game ``(Draw, win , Lose )``.

<img width="401" alt="Screen Shot 2019-04-21 at 13 30 13" src="https://user-images.githubusercontent.com/37377831/56472919-9325af00-645c-11e9-86b8-65745efaeaa9.png">

# Flaws of the Application.
- The application is currently not working properly because of a login inside the game model. This is what is happening behind the scene.

<img width="462" alt="Screen Shot 2019-04-21 at 14 17 21" src="https://user-images.githubusercontent.com/37377831/56472971-07605280-645d-11e9-8feb-01e1959ce248.png">

<img width="415" alt="Screen Shot 2019-04-21 at 14 16 36" src="https://user-images.githubusercontent.com/37377831/56472961-ea2b8400-645c-11e9-8874-2043bc1f44f3.png">

<img width="645" alt="Screen Shot 2019-04-21 at 14 16 50" src="https://user-images.githubusercontent.com/37377831/56472981-26f77b00-645d-11e9-9deb-5c0542b484a0.png">

<img width="616" alt="Screen Shot 2019-04-21 at 14 17 01" src="https://user-images.githubusercontent.com/37377831/56472984-3c6ca500-645d-11e9-85d3-f9e67e53dbd8.png">

The method ``random_choice`` returns a random object from the array anytime it is called. This means the object being return by ``random_choice`` in the ``choice method`` is different from the object being returned by ``random_choice`` in the results method. The returend value of these two methods are being used in the view to show the shape that the computer and the user chose and the winner of the game, but since they all have different random choice the real winner of game is sometimes wrong as inllustrated ihe image below.

<img width="404" alt="Screen Shot 2019-04-21 at 13 30 34" src="https://user-images.githubusercontent.com/37377831/56473077-21e6fb80-645e-11e9-8e0a-aac308a368ef.png">

> Rock should beat Scissors but instead Scissors won.

# Improvements.
- Improve application logic.
- Fix the current bug in the application.
- Incolporate multiplayer.
- Host app on Heroku.

# Technologies Used.
- Sinatra.
- CSS3.
- Sass.
- Twitter Bootstrap.
- HTML5.
- RSPEC.
- Capybara.

# Basic Game Rules.
- Rock beats Scissors.
- Scissors beats Paper.
- Paper beats Rock.
