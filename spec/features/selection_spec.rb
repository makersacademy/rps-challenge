feature 'Allowing the user to choose rock' do
  scenario 'Making sure there is a button on the page allowing them to select rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end
  scenario 'Clicking the button assigns the user\'s choice to rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(Game.access.player.selection).to eq :rock
  end
end

feature 'Allowing the user to choose paper' do
  scenario 'Making sure there is a button on the page allowing them to select paper' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end
  scenario 'Clicking the button assigns the user\'s choice to paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(Game.access.player.selection).to eq :paper
  end
end

feature 'Allowing the user to choose scissors' do
  scenario 'Making sure there is a button on the page allowing them to select scissors' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end
  scenario 'Clicking the button assigns the user\'s choice to scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(Game.access.player.selection).to eq :scissors
  end
end
