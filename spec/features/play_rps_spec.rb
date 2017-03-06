# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'to play rock-paper-scissors', :type => :feature do
  scenario 'marketeer can make a choice between rock-paper-scissors' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'rock')
    expect(page).to have_selector(:button, 'paper')
    expect(page).to have_selector(:button, 'scissors')
  end

  scenario "user has picked rock and shows confirmation" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Albert chose rock"
  end

  scenario "user plays game and can play again" do
    sign_in_and_play
    click_button('rock')
    click_button('play again')
    expect(page).to have_selector(:button, 'rock')
    expect(page).to have_selector(:button, 'paper')
    expect(page).to have_selector(:button, 'scissors')
  end
end
