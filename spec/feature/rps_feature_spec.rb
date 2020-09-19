feature 'User can enter their name on the / page of the site' do
  scenario 'page loads with HTML' do
    visit '/'
    expect(page).to have_content("Please enter your name to begin")
  end
  
  scenario 'enters name on main page' do
    sign_in_submit
  end
end

feature 'User can play rock, paper, scissors' do
  scenario 'user enters their name, hits submit, and the next page loads' do
    sign_in_submit
    expect(page).to have_content("Rock! Paper! Scissors!")
  end

  scenario "user has signed in, and chooses a rock" do
    sign_in_submit
    click_on('rock')
    expect(page).to have_content("Sam threw: rock")
  end

  scenario "user has signed in, and chooses a paper" do
    sign_in_submit
    click_on('paper')
    expect(page).to have_content("Sam threw: paper")
  end

  scenario "user has signed in, and chooses a scissor" do
    sign_in_submit
    click_on('scissors')
    expect(page).to have_content("Sam threw: scissors")
  end
end

feature 'User can win, lose, or draw a game against a bot' do
  scenario 'Enters name, loses against the bot' do
    sign_in_submit
    click_on('scissors')
    srand(0)
    expect(page).to have_content("RPS BOT is the winner!")
  end

  scenario 'Enters name, wins against the bot' do
    sign_in_submit
    click_on('paper')
    srand(0)
    expect(page).to have_content("Sam is the winner!")
  end

  scenario 'Enters name, wins against the bot' do
    sign_in_submit
    click_on('rock')
    srand(0)
    expect(page).to have_content("It's a draw!")
  end

end

feature 'Multiplayer' do
  scenario 'two users can enter their name, hit submit and the page loads' do
    mp_sign_in_submit
  end

  scenario 'two users log in and can play a game (win)' do
    mp_sign_in_submit
    click_on('paper')
    click_on('rock')
    expect(page).to have_content("Aardvark is the winner!")
  end

  scenario 'two users log in and can play a game (draw)' do
    mp_sign_in_submit
    click_on('scissors')
    click_on('scissors')
    expect(page).to have_content("It's a draw!")
  end
end
