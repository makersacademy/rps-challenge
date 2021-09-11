feature 'Choosing a move' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_link 'Paper'
    expect(page).to have_content 'Keldra selected Paper'
  end
end
