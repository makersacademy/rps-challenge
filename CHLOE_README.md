# Rock, Paper, Scissors 

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
- Fill in the test field with a name
- Click a submit button
- Click either rock, paper, or scissors button
- See who has won!
- (Edge case (?): Rematch)
### 2. What does the user expect? 
- A page showing a option of either rock, paper, scissor to choose their hand
- To see who won!
- (Edge case(?): Button to replay)

<br>

-------
<br>

## ISSUES
1. I couldn't get the session to work correctly once stored within the instance variable @player. <h3> Error: </h3> ``` Failure/Error: expect(page).to have_content 'ROCK, PAPER, SCISSORS John vs Computer'
       expected to find text "ROCK, PAPER, SCISSORS John vs Computer" in "ROCK, PAPER, SCISSORS\nJohn vs Computer". (However, it was found 1 time including non-visible text.)
     ./spec/features/register_name_spec.rb:6:in `block (2 levels) in <top (required)>' ``` RESOLVED [I hadn't put ```enable: sessions``` within configure, it was above]
2. I tried to add a background image inline using "background-image: url(../images/paper.jpg) but i'm not used to using inline style and more familiar with stylesheets. 