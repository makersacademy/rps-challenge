feature 'Result page' do
  scenario 'the users choice is displayed' do
    ready_to_play
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
  end
end
