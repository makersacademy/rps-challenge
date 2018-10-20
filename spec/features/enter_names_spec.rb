feature 'Enter names for two players' do

  scenario 'User is asked for both names' do
    visit '/'
    find_button('Two').click
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
