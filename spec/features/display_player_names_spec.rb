feature 'it displays the players name' do
  scenario 'player has entered their name' do
    visit '/'
    fill_in :name, with: 'James'
    click_button 'OK'
    expect(page).to have_content 'James'
  end
end

feature 'playing a game of rps' do
  scenario 'user can see a choice of rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

  feature 'player chooses Rock, Paper or Scissors' do
    scenario 'James chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'James chose Rock'
    end
  end

  feature 'game chooses Rock, Paper or Scissors' do
    scenario 'James chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Rock'
    end
  end
