feature 'player can choose between rock, paper and scissors' do
  scenario 'can choose 3 options after entering name and submitting' do
    sign_in_and_play
    find_button('Rock')
    find_button('Paper')
    find_button('Scissors')
    expect(page).to have_content("#{@player_name}...Are you ready!? Let's play!")
  end
end
