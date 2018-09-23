feature 'Make a move' do
  scenario 'Clicking a move button, displays your move.' do
    submit_name
    click_button('Rock')
    expect(page).to have_content "Your move: Rock"
  end
end
