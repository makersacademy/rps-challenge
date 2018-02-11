feature 'player can enter a name' do
  scenario 'entered name is displayed on screen' do
    play_computer
    sign_in_and_play
    
    expect(page).to have_content('Hi, Josu!')
  end
end
