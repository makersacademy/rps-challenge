feature 'playing the game' do

  scenario 'checking if there are 3 options to choose from' do
    sign_in_and_play
    expect(page).to have_content('Rock paper scissors')
  end

end
