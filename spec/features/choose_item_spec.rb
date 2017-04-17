require 'spec_helper.rb'

feature 'choose item' do
  scenario 'choosing rock' do
    visit ('/')
    fill_in :name, with: 'Ivan'
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You selected Rock'
  end

  scenario 'choosing paper' do
    visit ('/')
    fill_in :name, with: 'Ivan'
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content 'You selected Paper'
  end

  scenario 'choosing scissors' do
    visit ('/')
    fill_in :name, with: 'Ivan'
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content 'You selected Scissors'
  end
end
