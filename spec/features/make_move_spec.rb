feature 'Make a Move' do
  scenario 'making a move' do
    sign_in_and_play
    make_moves
    expect(page).to have_content 'Ken threw rock'
  end
end