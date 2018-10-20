feature 'First name selects an option' do

  before do
    sign_in_and_play
  end

  scenario 'selects rock and is shown game2' do
    find_button('rock').click
    expect(page).to have_content "Caitlin vs James"
  end

  scenario 'selects paper and is shown game2' do
    find_button('paper').click
    expect(page).to have_content "Caitlin vs James"
  end
  scenario 'selects scissors and is shown game2' do
    find_button('scissors').click
    expect(page).to have_content "Caitlin vs James"
  end
end

feature 'Second name selects an option' do
  before do
    sign_in_and_play
  end

  scenario 'selects rock and is shown confirmation page' do
    find_button('rock').click
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was rock"
  end

  scenario 'selects paper and is shown confirmation page' do
    find_button('paper').click
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was paper"
    expect(page).to have_content "James's move was rock"
  end

  scenario 'selects scissors and is shown confirmation page' do
    find_button('scissors').click
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was scissors"
    expect(page).to have_content "James's move was rock"
  end
end
