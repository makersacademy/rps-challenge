[ Place a guideline on how to run your code here]

## My approach to this challenge

### 1st User Story
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our names and seeing them
```

#### Brainstorm this user story and create a light Domain model
I decided to create a brainstorm for this user story as I was a little confused and unsure of what my first steps should be.

- [x] Create a miro board and set the centre of the Brainstorm as the first user story goal ``Register Users name``

I used this miro board as a place to break down some of the steps I knew I needed to do such as, "to register the users name I need to create a form" and "I need to take the users input and store it using params". 

This also served as a space for me to brainstorm any questions I have on keywords such as "Controller" and "Views" and develop a stronger picture of them and how to use them effectively in this project.

#### Steps to fulfilling this user story

- [x] Lets create a simple feature test for the homepage, we expect it to have the content "Hello" present on the page.
- [x] Make this unit test pass

##### Creating a form to capture the users name
- [x] Create a feature test that inputs the name "Abdul" into the form and expect the resulting page to have the name "Abdul" included in it's content.
- [x] Make this feature test pass and list below the steps you took to make it pass
  * I created a form element on index.erb with an action sending it to /name-form-page with a POST method
  * added an input field set to "name" and a submit button
  * Next I created the post route "/name-form-page" and stored the name given by the user as ``@name`` using params. 
  * Then I create a session hash to store the @name variable and make it persist through the different sessions or routes that I want to have access to the users name.
  * finally have "/name-form-page" redirect to a new get route called "/play" also create this route aswell.
  * Save the session hash to another @name variable
  * Have "/play" render the play.erb page which should include the users name using @name

We have completed this user story and performed a feature test to ensure the web app is working as intended.