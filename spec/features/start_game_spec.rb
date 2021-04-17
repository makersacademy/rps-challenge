feature 'Start game' do
  scenario 'Chosing the weapon' do
    sign_in_and_play
    click_button 'Start'
    expect(page).to have_content 'Tiago Choose One'
  end
end