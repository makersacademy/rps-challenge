require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Homepage' do
  scenario "when visiting the homepage" do
    visit ('/')
    expect(page).to have_content('Rock-Paper-Scissors Game!')
  end
end

feature 'Enter name' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_name, with: 'Mike'
    click_button 'submit'
    expect(page).to have_content('Mike')
  end
end
