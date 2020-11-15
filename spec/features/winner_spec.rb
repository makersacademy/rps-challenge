feature 'winner declared' do
  scenario 'when a player wins, there is confirmation' do
    sign_in_and_play
    
    until current_url == '/outcome' do
      choose('choice', option: 'rock')
      click_button('Submit')
      click_button('Next Round')
    end

    expect(page).to have_content('is the winner!')
  end
end