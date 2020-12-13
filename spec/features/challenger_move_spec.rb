feature 'challenger move' do
  scenario 'allows player to roll rock, paper, or scissors' do
    challenger_moves
    expect(page).to have_text("YOUR WEAPON OF CHOICE IS...")
  end
end
