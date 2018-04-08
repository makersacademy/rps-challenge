require './app'

feature 'Finish game' do
  scenario 'pressing button "Finish"' do
    sign_in_and_play
    paper
    click_button 'Submit'
    click_button 'Choose'
    choose('choice', option: 'Scissors', allow_label_click: true)
    click_button 'Submit'
    click_button 'Finish'
  end
  scenario 'and want to start a new game' do
    sign_in_and_play
    paper
    click_button 'Submit'
    click_button 'Choose'
    choose('choice', option: 'Scissors', allow_label_click: true)
    click_button 'Submit'
    click_button 'Finish'
    sign_in_and_play_2
    expect(page).to have_content 'Anton vs. Cat'
  end
end
