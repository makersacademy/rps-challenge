feature "1 player game enter name" do

  scenario "checks that the page has a form for one player" do
    visit('/')
    click_button 'Bot'
    expect(page).to have_field 'marketer_1'
  end

  scenario "checks that the page has a choose game button" do
    visit('/')
    click_button 'Bot'
    expect(page).to have_selector(:link_or_button, 'Choose Game')
  end
end
