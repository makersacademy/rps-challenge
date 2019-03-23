feature 'Computers move' do
  scenario 'stores a random move' do
    sign_in_and_play
    have_select('move')
    click_button '3..2..1'
    # srand(4)
    # allow(RPS).to receive(:computer_move).and_return("Scissors")
    expect(page).to have_content 'Computer played: '
  end
end

# need to speak to coach about testing.
