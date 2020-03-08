feature "choose RPS" do
  scenario "user can click scissors" do
    visit ('/')
    fill_in('player1', with: 'Will')
    click_button('Submit')
    click_link('Scissors')
    expect(page).to have_content "scissors"
  end

end
