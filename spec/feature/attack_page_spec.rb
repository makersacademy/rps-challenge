require_relative '../../app/rps_web'

feature RPSWeb do
  scenario "Displays appropriate text on /attack page" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    expect(page).to have_content("Constantine\nChosen weapon:")
  end

  scenario "The header is in the /play page" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    expect(page).to have_content("Rock Paper Scissors")
  end

  scenario "Displays the player's chosen weapon after attacking" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    expect(page).to have_content("rock")
  end

  scenario 'expect a replay button' do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    expect(page).to have_button("Replay")
  end

  scenario 'expect to go back to /play by clinking on the Replay button' do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    click_button("Replay")
    expect(page).to have_button("Attack")
  end

  scenario 'expect a New Player button' do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    expect(page).to have_button("New Player")
  end

  scenario 'expect to go back to homepage by clinking on the New Player button' do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    page.select 'Rock 🪨', from: 'weapon'
    click_button("Attack")
    click_button("New Player")
    expect(page).to have_content("Log In to play Rock Paper Scissors!")
    expect(page).to have_button("Play")
  end
end
