feature 'First name selects an option' do

  before do
    sign_in_and_play
  end

  scenario 'selects rock and is shown next page' do
    find_button('rock').click
    expect(page).to have_content "It's currently James's turn"
  end

  scenario 'selects paper and is shown next page' do
    find_button('paper').click
    expect(page).to have_content "It's currently James's turn"

  end
  scenario 'selects scissors and is shown next page' do
    find_button('scissors').click
    expect(page).to have_content "It's currently James's turn"
  end

  scenario 'selects lizard and is shown next page' do
    find_button('lizard').click
    expect(page).to have_content "It's currently James's turn"
  end

  scenario 'selects spock and is shown next page' do
    find_button('spock').click
    expect(page).to have_content "It's currently James's turn"
  end
end

feature 'Second name selects an option' do
  before do
    sign_in_and_play
    find_button('rock').click
  end

  scenario 'selects rock and is shown confirmation page' do
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was rock"
  end

  scenario 'selects paper and is shown confirmation page' do
    find_button('paper').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was paper"
  end

  scenario 'selects scissors and is shown confirmation page' do
    find_button('scissors').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was scissors"
  end

  scenario 'selects scissors and is shown confirmation page' do
    find_button('lizard').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was lizard"
  end

  scenario 'selects scissors and is shown confirmation page' do
    find_button('spock').click
    expect(page).to have_content "Caitlin's move was rock"
    expect(page).to have_content "James's move was spock"
  end
end
