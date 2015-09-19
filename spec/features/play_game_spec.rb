require 'spec_helper'

feature 'Play the game' do


  scenario 'I am welcomed' do
    visit '/'
    expect(page).to have_content "Welcome to rps!"
  end

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content "Please enter your name"
  end

  scenario 'after I entered my name' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    expect(page).to have_content "Hello, John! Make your choice!"
  end

  # scenario 'takes you to a page where you can see your board' do
  #   visit '/new_player'
  #   click_button('See your board')
  #   expect(page).to have_content "This is your board"
  # end

  # scenario 'shows the board' do
  #   visit '/place_ships'
  #   expect(page).to have_xpath(".//tr", :count => 10)
  # end





end