require 'spec_helper'

feature 'Play the game' do


  scenario 'I am welcomed' do
    visit '/'
    expect(page).to have_content "Welcome to rps!"
  end

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'after I entered my name' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    expect(page).to have_content "Hello, John! Please, make your choice!"
  end

  scenario 'I can make my rps choise' do
    visit '/new_game'
    expect(page).to have_select('rps')
  end


end