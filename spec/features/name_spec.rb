RSpec.feature 'name_spec: Entering player name:' do

  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'player_name'
  end

end
