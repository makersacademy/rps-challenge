feature 'winner declared' do
  scenario 'when a player wins, there is confirmation' do
    sign_in_and_play
    
    loop do
      choose('choice', option: 'rock')
      click_button('Submit')
      break if current_path == '/outcome'
      click_button('Next Round')
    end

    expect(page).to have_content('the winner')
  end
end