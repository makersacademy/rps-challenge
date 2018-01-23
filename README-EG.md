# **Ed Goold RPS Challenge Readme - 21.1.2018**

This readme summarises my solution to the RPS Challenge set for the third weekend of the Makers Academy's December 2017 cohort.

It is separated into the following sections:

	1. Introduction & Requirements

	2. Download and Installation Instructions

	3. Gameplay

	4. Objects

	5. Tests and Coverage

	6. Code Review Request

## **1. Introduction & Requirements**

	This RPS challenge consolidates week 3 learning on the test driven development (BDD/TDD) of web applications through the development of an online rock/paper/scissors game.

	Requirements: 

	- that a player is able to enter their name in order to play the game and see the result "in lights";

	- that a player be presented initially with the three RPS options of i) rock, ii) paper, and iii) scissors;

	- that a player can choose one of those three RPS options;

	- that the game chooses one of the three RPS options at random; and

	- that a winner is subsequently declared.

## **2. Download and Installation Instructions**

	Please run bundle install to ensure that you have all the necessary gems for this program.  Once that has been completed, you will be able to play the game.

## **3. Gameplay**
	
	As with normal RPS, you must select one of rock, paper and scissors to go head to head against the computer and see who wins.  For additional gameplay, perhaps record the results and then calculate the best of 3.

## **4. Objects**

	- RPSWeb App

	- Game

	- Player

## **5. Tests and Coverage**

	I have implemented test driven development here and currently have 100% coverage from my tests with all passing.  I would be keen to hear whether there are any areas that I should be concentrating on further.

## **6. Code Review Request**

	I would appreciate feedback on my code.  I have tried to meet the essential requirements as efficiently as possible and this has lead to a simplicity-first approach (given that web apps are wholly new territory here).  In terms of objects, the only viable one that I could think of extracting was a computer class but given that this object would only do one thing - sampling its own array - it struck me as overkill to separate it out into a class all to itself.  Any thoughts on that would be very much appreciated.