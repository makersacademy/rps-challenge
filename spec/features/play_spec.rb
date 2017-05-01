feature "Game on" do

  scenario "tests for page content" do
    visit('/play')
    expect(page).to have_content "Choose your item:"
  end

  # scenario "finds an item" do
  #   visit('/play')
  #   choose('Scissors')
  #   click_button('Submit')
  #   ex
  # end



end
