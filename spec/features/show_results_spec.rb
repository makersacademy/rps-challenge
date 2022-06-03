# spec/features/show_results_spec.rb

feature 'Throwing page' do
  xscenario 'Win' do
    sign_in_as_michael
    choose('rock')
    expect($game.player_2).to receive(:choice).and_return(:scissors).at_most(3).times # partial double?
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: scissors"
    expect(page).to have_content 'You Win!'
  end

  xscenario 'Lose' do
    sign_in_as_michael
    choose('rock')
    expect($game.player_2).to receive(:choice).and_return(:paper).at_most(3).times # partial double?
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: paper"
    expect(page).to have_content 'You Lose!'
  end

  xscenario 'Tie' do
    sign_in_as_michael
    choose('rock')
    allow($game.player_2).to receive(:throw).and_return(:rock)
    expect($game.player_2).to receive(:choice).and_return(:rock).at_most(3).times # partial double?
    click_button("Throw!")
    expect(page).to have_content "Michael: rock vs Computer: rock"
    expect(page).to have_content 'It is a tie!'
  end
end