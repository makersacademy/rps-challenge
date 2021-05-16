require_relative 'web_helpers'
feature 'Display name player' do
  scenario 'the player can enter their name and it is displayed' do
    sign_in_and_play
    expect(page).to have_content('Rob')
  end
end

feature 'Choices' do
  scenario 'the page should have the choice of rock' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  scenario 'the page should have the choice of paper' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'the page should have the choice of scissors' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end
end

feature 'results' do
  scenario 'the page should display the player choice of rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose ROCK')
  end

  scenario 'The computers choice is displayed' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('The computer chose')
  end
  # scenario 'It says if the player or the computer has won' do
  #   sign_in_and_play
  #   allow(CompChoice::CHOICE).to receive(:sample).and_return(:scissors)
  #   click_button('Rock')
  #   expect(page).to have_content('You Win!')
  # end

end
