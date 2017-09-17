RSpec.feature 'choose a weapon' do
  scenario 'Choose rock from drop-down' do
    sign_in_and_play
    select 'Rock', from: "Weapons"
    click_button 'Submit'
    expect(page).to have_content "Player Weapon: Rock"
  end

end
