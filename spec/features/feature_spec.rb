feature 'ai game' do
  scenario 'player chooses rock computer chooses paper' do
    allow_any_instance_of(Player).to receive(:hand).and_return('Paper')
    sign_in_ai
    click_button 'Rock'
    expect(page).to have_content 'AI threw Paper'
  end
end

feature 'multiplayer game' do
  scenario 'player 1 chooses rock, player 2 chooses scissors' do
    sign_in_multi
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content 'Tom score: 1/1'
  end
end

