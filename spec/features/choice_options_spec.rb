require './app'

feature 'When game started' do
  scenario 'first player is defined and player press button "Choose"' do
    sign_in_and_play
    click_button 'Start'
    click_button 'Choose'
    expect(page).to have_content 'Please choose from three options:'
  end
  scenario 'second player press button "Choose"' do
    sign_in_and_play
    rock
    click_button 'Submit'
    expect(page).to have_content 'Now'
    click_button 'Choose'
  end
  context 'when players redirect on page with available options' do
    scenario 'click radio_button "Rock"' do
      rock
    end
    scenario 'click radio_button "Paper"' do
      paper
    end
    scenario 'click radio_button "Scissors"' do
      scissors
    end
  end
end
