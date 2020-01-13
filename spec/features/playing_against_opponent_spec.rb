feature 'playing an actual game' do
  scenario 'implements game and shows result' do
    srand(67810)
    sign_in_and_play
    choose("move", with:'Scissors')
    click_button 'Submit'
    expect(page).to have_content ("You have lost!")
  end
end
