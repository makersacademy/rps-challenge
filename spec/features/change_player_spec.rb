require 'spec_helper'

feature "New players can register" do
  scenario 'and replace the current ones by clicking Register new players' do
    replay
    expect(page).to have_button('Register new players')
  end

  scenario 'and play in their stead' do
    replay
    click_button 'Register new players'
    fill_in :player_01_name, with: 'Peppers'
    fill_in :player_02_name, with: 'Soda'
    click_button 'Submit'
    expect(page).to have_content('Hey, Peppers!')
  end
end
