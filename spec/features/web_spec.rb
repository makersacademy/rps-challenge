
feature 'rock paper scissors webapp' do

  before do
    allow_any_instance_of(Game).to receive(:computer_selection).and_return(:paper)
  end

  scenario 'greets user' do
    visit '/'
    expect(page).to have_content("Welcome to Rock Paper Scissors!")
  end

  context 'One player game' do

    scenario 'allows user to sign in' do
      sign_in_and_select
      expect(page).to have_content "Welcome, Becka!"
    end

    scenario 'user selects rock, paper or scissors' do
      sign_in_and_select
      click_on(:rock)
      expect(page).to have_content "You selected rock"
    end

    scenario "I can see what I selected, and what the computer selected" do
      sign_in_and_select(:rock)
      expect(page).to have_content "You selected rock, your opponent selected paper"
    end

    scenario "I can select paper" do
      sign_in_and_select(:paper)
      expect(page).to have_content "You selected paper, your opponent selected paper"
    end

    scenario "I can select scissors" do
      sign_in_and_select(:scissors)
      expect(page).to have_content "You selected scissors, your opponent selected paper"
    end

    scenario "User loses a game" do
      sign_in_and_select(:rock)
      expect(page).to have_content "computer won the round"
    end

    it 'user wins a game' do
      sign_in_and_select(:scissors)
      expect(page).to have_content "Becka won the round"
    end

  end

  context 'two player game' do
    it 'allows two users to sign in' do
      two_player_sign_in
      expect(page).to have_content "Welcome, Becka and Jess!"
    end

  end

end
