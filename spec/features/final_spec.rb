feature 'Enter name' do
  scenario 'Submit name' do
    sign_in_to_play
    click_button "Click here to continue"
    select('Rock', from: 'player_choice')
    click_button 'Submit'
    click_button 'Click here for computer choice'
    expect(page).to have_content 'Dave you chose rock'
  end
end
