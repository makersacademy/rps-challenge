
feature 'rock paper scissors webapp' do
  scenario 'greets user' do
    visit '/'
    expect(page).to have_content("Welcome to Rock Paper Scissors!")
  end

  scenario 'allows user to sign in' do
    sign_in_and_select
    expect(page).to have_content "Welcome, Becka!"
  end

  scenario 'user selects rock, paper or scissors' do
    sign_in_and_select('rock')
    expect(page).to have_content "You selected rock"
  end

  scenario "I can see what I selected, and what the computer selected" do
    sign_in_and_select('rock')
    click_on 'OK'
    expect(page).to have_content "You selected rock, your opponent selected paper"
  end

  scenario "I can select paper" do
    sign_in_and_select('paper')
    click_on 'OK'
    expect(page).to have_content "You selected paper, your opponent selected paper"
  end

  scenario "I can select scissors" do
    sign_in_and_select('scissors')
    click_on 'OK'
    expect(page).to have_content "You selected scissors, your opponent selected paper"
  end

  scenario "User loses a game" do
    sign_in_and_select('scissors')
    click_on 'OK'
    expect(page).to have_content "You lost the game :("
  end


end
