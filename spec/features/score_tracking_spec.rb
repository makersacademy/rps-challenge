feature 'Game keeps track of score' do
  scenario 'shows score increase for player 1' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(2)  
    register_1_player_against_computer
    click_button 'rock'
    click_link 'OK'
    click_button 'Start again'
    expect(page).to have_content 'Score: Player1 - 0 : Computer - 1'
  end
end