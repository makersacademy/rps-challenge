feature "2 player game enter names" do

  scenario "checks that the page has forms for both players" do
    select_live_opponent
    expect(page).to have_field 'marketer_1'
    expect(page).to have_field 'marketer_2'
  end

  scenario "checks that the page has a choose game button" do
    select_live_opponent
    expect(page).to have_selector(:link_or_button, 'Choose Game')
  end
end
