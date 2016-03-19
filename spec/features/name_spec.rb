RSpec.feature 'name_spec: Entering player name:' do

  scenario 'submitting name' do
    visit '/'
    fill_in 'player_name', with: 'player_name'
    click_button 'Play'
    expect(page).to have_content 'player_name'
  end

end
