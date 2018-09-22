require 'spec_helper'
require './app'

feature "Greeter" do
   scenario "Greets player and asks to enter name" do
     visit('/')
     expect(page).to have_content("Welcome to Rock, Paper, Scissors! Please enter your name:")
   end
end
