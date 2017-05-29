feature 'Enter name' do
  scenario ' player can enter name' do
    sign_in
    expect(page).to have_content 'Player 1'
  end
end
