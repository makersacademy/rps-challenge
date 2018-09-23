require 'spec_helper'
require './app'

feature "Greeter" do
   scenario "Greets player and asks to enter name" do
     visit('/')
     expect(page).to have_content("Welcome to Rock, Paper, Scissors! Please enter your name:")
   end

   scenario "Player enters name" do
     visit('/')
     fill_in :name, with: "Florence"
     click_button "Submit"
     expect(page).to have_content("Florence! Get ready to play!")
     expect(page).to have_button('Rock')
     expect(page).to have_button('Paper')
     expect(page).to have_button('Scissors')
   end
 end
