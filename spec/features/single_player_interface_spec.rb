feature 'custom interface for single player' do
  scenario 'there is no player two form interface in single player' do
    sign_in
    expect(page).to_not have_content('Player 2 choice:')
  end
end
