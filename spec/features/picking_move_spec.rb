feature 'Making a move' do
  scenario 'player picks a move' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'You picked rock'
  end

  scenario 'computer picks a random move' do
    sign_in_and_play
    srand(5246)
    click_on 'Rock'
    expect(page).to have_content 'the computer picked paper'
  end
end
