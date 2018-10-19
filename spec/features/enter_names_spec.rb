feature 'Enter name' do
  before do
    visit '/'
  end

  scenario 'User is asked for name' do
    expect(page).to have_content "please enter your names"
  end

  scenario 'Can submit names and sees whos playing' do
    sign_in_and_play
    expect(page).to have_content "Caitlin vs James"
  end

  scenario 'Should be name1s turn first' do
    sign_in_and_play
    expect(page).to have_content "It's currently Caitlin's turn"
  end

  scenario 'Should be name2s turn second' do
    sign_in_and_play
    find_button('rock').click
    expect(page).to have_content "It's currently James's turn"
  end
end
