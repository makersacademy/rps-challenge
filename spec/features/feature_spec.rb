feature 'Entering name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs RosiePoSie')
  end
end

feature 'Gameplay' do
  scenario 'player wins with rock' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content("Rock beats scissors! CaptainCode: 1, RosiePoSie: 0")
  end
end
