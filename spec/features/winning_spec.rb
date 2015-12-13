feature 'Winning the game' do
  scenario 'The result is displayed' do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'And the winner is...'
  end

  scenario "The player's choice is displayed" do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Marketeer chose: Paper'
  end

  scenario "The computer's choice is displayed" do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Computer chose: '
  end
end
