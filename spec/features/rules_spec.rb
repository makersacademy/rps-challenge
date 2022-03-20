feature 'Rules Page' do 
  scenario 'players can see a recap of the rules beofer starting the game' do
    setup_1_player('Marketeer 1')
    click_button('Check Rules')
    expect(page).to have_content 'Rock beats Scissors'
    expect(page).to have_content 'Scissors beats Paper'
    expect(page).to have_content 'Paper beats Rock'
    Game.instance.reset
  end
end
