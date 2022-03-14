feature 'choosing rock, paper, or scisors' do
  scenario 'bottons work' do
    visit '/'
    fill_in('player_name', with: 'Patryk')
    click_button('Start Game')
    click_button('Rock')
    expect(page).to have_content "You chose Rock, computer chose Scisors. It means you won!"
  end
end