feature 'Challenger input' do
  scenario 'challenger submits name and move' do
    sign_in_and_select_move
    expect(page).to have_content 'Link chose rock'
  end
end
