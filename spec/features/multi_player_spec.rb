# spec/features/muti_player_spec.rb

feature 'Two throwing page' do
  scenario 'Showing Player 2 name for two players (when first player choosing)' do
    sign_in_as_tom_and_jerry
    expect(page).to have_content "Tom, please choose your choice."
    expect(page).to have_content "Your opponent's name: Jerry"
  end

  xscenario 'Showing Player 1 name for two players (when second player choosing)' do
    sign_in_as_tom_and_jerry
    choose('rock')
    click_button("Throw!")
    expect(page).to have_content "Jerry, please choose your choice."
    expect(page).to have_content "Your opponent's name: Tom"
  end

  xscenario 'Showing options for two players one by one' do
    sign_in_as_tom_and_jerry
    expect(page).to have_content "Tom, please choose your choice."
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
    choose('rock')
    click_button("Throw!")
    expect(page).to have_content "Jerry, please choose your choice."
    expect(page).to have_content 'ROCK!'
    expect(page).to have_content 'PAPER!'
    expect(page).to have_content 'SCISSORS!'
  end
end