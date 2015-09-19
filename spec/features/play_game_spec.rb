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

  scenario 'after I entered my name I can make my choice' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    expect(page).to have_content "Hello, John! Please, make your choice!"
  end

  scenario 'I can make my rps choise' do
    visit '/'
    fill_in('name', :with => 'John')
    visit '/new_game'
    expect(page).to have_select('rps')
  end

  scenario 'I can see my choice' do
    visit '/new_game'
    find("option[value='rock']").click
    click_button('Play!')
    expect(page).to have_content('Your choice is rock')
  end

  scenario 'I can see computer\'s choice' do
    visit '/new_game'
    find("option[value='rock']").click
    click_button('Play!')
    expect(page).to have_content('Computer\'s choice is ')
  end

  scenario 'I can see the result of the game' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    find("option[value='rock']").click
    click_button('Play!')
    expect(page).to have_content('And the winner is ... ')
  end

  scenario 'I can continue playing' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    find("option[value='rock']").click
    click_button('Play!')
    click_button('Play again')
    expect(page).to have_select('rps')
  end

  scenario 'I can exit' do
    visit '/'
    fill_in('name', :with => 'John')
    click_button('submit')
    find("option[value='rock']").click
    click_button('Play!')
    click_button('Exit')
    expect(page).to have_content('Bye-bye')
  end

end