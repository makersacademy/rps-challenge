require './app'

feature 'Start the game' do
  scenario 'pressing button "start"' do
    sign_in_and_play
    click_button 'Start'
    expect(page).to have_content 'choose first!'
    click_button 'Choose'
  end
end
