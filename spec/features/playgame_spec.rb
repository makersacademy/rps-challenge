require 'spec_helper.rb'

feature 'play  game' do
  before do
    visit('/')
    fill_in :player_name, with:'Hisham'
    click_button ('Submit')
  end

  scenario 'user can see the available options' do
      expect(page).to have_button('Rock')
      expect(page).to have_button('Paper')
      expect(page).to have_button ('Scissors')
    end

    scenario 'user can choose one option' do
    click_button ('Rock')
    expect(page).to have_content("Rock!")
  end
end
