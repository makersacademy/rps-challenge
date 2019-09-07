feature 'Computer selects and option' do
  scenario 'The computer selects a random tool and it appears on page' do
    srand 2
    sign_in_and_player1_selects
    expect(page).to have_text('scissors')
  end

  scenario 'The computer selects a random tool and it appears on page' do
    srand 3
    sign_in_and_player1_selects
    expect(page).to have_text('paper')
  end
end
