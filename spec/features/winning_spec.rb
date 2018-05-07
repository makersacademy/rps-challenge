feature 'player one wins' do
  scenario 'win message appears on results page' do
    allow_any_instance_of(Bot).to receive(:rand).and_return(2)
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content('Result of the game: win')
  end
end
