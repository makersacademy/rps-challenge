require 'spec_helper'

feature 'Register name' do
  scenario 'Demands player name' do
    visit '/'
    click_button('Proceed')
    expect(page).to have_content("What's your name!")
  end

  scenario 'A name has to be registered' do
    visit '/name'
    fill_in('name', with: '')
    click_button('Next')
    expect(page).to have_content("What's your name!")
  end
end

feature 'Instructions' do
  scenario 'Once player has registered, instructions are given' do
    visit '/name'
    fill_in('name', with: 'Dan')
    click_button('Next')
    expect(page).to have_content("Hello, Dan! Welcome to"\
    " Rock-Paper-Scissors-Lizard-Spock")
  end
end

feature 'Rock-Paper-Scissors-Lizard-Spock Game' do
  scenario 'Proceed to pick shape' do
    visit '/instructions'
    find_button("Let's Rock").click
  end

  scenario 'Player is given five shapes to throw' do
    visit '/throw'
    expect(page).to have_select('shape')
  end

  scenario 'Player can throw a shape' do
    visit '/name'
    fill_in 'name', with: 'Dan'
    click_button('Next')
    click_button("Let's Rock")
    select('Spock', from: 'shape')
    click_button('Throw')
    expect(page).to have_content('You threw Spock!')
  end
end
