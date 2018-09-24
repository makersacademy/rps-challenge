feature 'Make a move' do
  scenario 'Clicking a move button, displays your move.' do
    submit_name
    click_button('Rock')
    expect(page).to have_content "Your move: Rock"
  end
end

feature 'CPU makes a move' do
  scenario "after clicking your move, CPU's move is shown" do
    submit_name
    click_button('Rock')
    expect(page).to have_content(/CPU's move: (Rock|Paper|Scissors)/)
  end
end
