feature 'Enter names for two player game' do

  scenario 'User is asked for both names' do
    visit '/'
    find_button('Two').click
    expect(page).to have_content "please enter your names"
  end

  before do
    sign_in_and_play
  end

  scenario 'Can submit names and sees whos playing' do
    expect(page).to have_content "Caitlin vs James"
  end

  scenario 'Should be player1s turn first' do
    expect(page).to have_content "It's currently Caitlin's turn"
  end

  scenario 'Should be player2s turn second' do
    find_button('rock').click
    expect(page).to have_content "It's currently James's turn"
  end
end

feature 'enter names for one player game' do
  scenario 'user is asked for one name' do
    visit '/'
    find_button('One').click
    expect(page).to have_content "please enter your name"
  end

  scenario 'Can submit name and see player vs computer' do
    single_sign_in
    expect(page).to have_content "Caitlin vs Computer"
  end
end
