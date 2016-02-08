feature "After player register in a game" do
  scenario "choices should be seen" do
    register_and_play
    expect(page).to have_css('input[type="submit"][name="choice"]')
  end
end