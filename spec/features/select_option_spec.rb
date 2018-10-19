feature 'Selecting an option' do

  before do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
  end

  scenario 'selects rock and is shown confirmation page' do
    find_button('rock').click
    expect(page).to have_content "Your move was rock"
    expect(page).to have_content "The game's move was rock"
    expect(page).to have_content "It's a draw!"
  end

  scenario 'selects paper and is shown confirmation page' do
    find_button('paper').click
    expect(page).to have_content "Your move was paper"
    expect(page).to have_content "The game's move was rock"
    expect(page).to have_content "You won!"
  end
  scenario 'selects scissors and is shown confirmation page' do
    find_button('scissors').click
    expect(page).to have_content "Your move was scissors"
    expect(page).to have_content "The game's move was rock"
    expect(page).to have_content "You lost!"
  end
end
