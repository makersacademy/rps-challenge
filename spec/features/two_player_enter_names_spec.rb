feature "2 player game enter names" do

  scenario "checks that the page has forms for both players" do
    visit('/')
    click_button 'Marketing Colleague'
    expect(page).to have_field 'marketer_1'
    expect(page).to have_field 'marketer_2'
  end

  scenario "checks that the page has a choose game button" do
    visit('/')
    click_button 'Marketing Colleague'
    expect(page).to have_selector(:link_or_button, 'Choose Game')
  end
end
