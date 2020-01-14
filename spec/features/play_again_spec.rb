feature 'Play again' do
  scenario'it starts a new game' do
    sign_in_and_play
    choose(option: 'rock')
    click_button 'OK'
    expect(page).to have_content 'Dave chose rock'
    computer = ["rock", "paper","scissors"].sample
    click_button 'Play again'
  end
end
