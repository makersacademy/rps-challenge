require './spec/web_helpers.rb'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Name' do
  scenario 'user can input name and have it stored' do
    sign_in_and_play
    expect(page).to have_content 'Player: Steve'
  end

  scenario 'user name should appear on each page' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'Player: Steve'
  end

  scenario 'Player 2 should appear on last page' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'Player: Computer'
  end
end
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'gameplay' do
  scenario 'player choice shows on next page' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'Choice: Rock'
  end

  scenario 'outputs if won' do
    srand(1)
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'You won!'
  end

  scenario 'outputs if drawn' do
    srand(2)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'DRAW!'
  end

  scenario 'outputs if lost' do
    srand(3)
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content 'You lost!'
  end
end
