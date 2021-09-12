# Rock, Paper, Scissors 

A simple game to let off a little steam after a hard days marketing. 

## User Story 1:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
### Nouns: 
- Marketeer
- Name 

### Verbs:
- Register
- Playing

### Action: 
- Register my name before playing an online game

<br>

-------
<br>

## Questions to ask myself:
1. What does a user have to do?
2. What does the user expect? 

<br>

-------
<br>

### 1.
- Visit the homepage ('/')
- Fill in the test field with a name
- Click a submit/play button
### 2. 
- A page showing a box to enter their name and a submit button

<br>

-------
<br>

## User Story 2:

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
### Nouns: 
- Marketeer

### Verbs:
- Play

### Action: 
- play rock/paper/scissors

<br>

-------
<br>

### 1. What does a user have to do?
- Visit the homepage ('/')
- Fill in the text field with a name
- Click a submit button
- Fill in text field with hand
- See who has won!
- (Edge case (?): Rematch)
### 2. What does the user expect? 
- A page showing a option of either rock, paper, scissor to choose their hand
- To see who won!
- (Edge case(?): Button to replay)

<br>

-------
<br>

## Overview
- I covered as far as I managed to get in the week challenge. 
- I did read the later chapters to see what would of been the next steps but as it was late on Sunday evening by this point I felt it was best to prioritise sleep over completion.
- Overly I am proud of myself for attempting this weekend project as I had been having issues with getting started on previous weekends. Along with a great amount of stress associated with this. 
- I understand that the next part would be to add in the M (Model) of MVC by creating a Player and Computer classes etc, building out tests for this in rspec respectively.
- game.erb and choose_hand_spec.rb were initial attempts at approaching how the player would choose their hand (rock, paper or scissors). I was deciding whether to use a text input or button for this. 


<br>

-------
<br>

## ISSUES
1. I couldn't get the session to work correctly once stored within the instance variable @player. <h3> Error: </h3> ``` Failure/Error: expect(page).to have_content 'ROCK, PAPER, SCISSORS John vs Computer'
       expected to find text "ROCK, PAPER, SCISSORS John vs Computer" in "ROCK, PAPER, SCISSORS\nJohn vs Computer". (However, it was found 1 time including non-visible text.)
     ./spec/features/register_name_spec.rb:6:in `block (2 levels) in <top (required)>' ``` RESOLVED [I hadn't put ```enable: sessions``` within configure, it was above]
2. I tried to add a background image inline using "background-image: url(../images/paper.jpg) but i'm not used to using inline style and more familiar with stylesheets. 