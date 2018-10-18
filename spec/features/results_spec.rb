feature "results page" do
  before do
    enter_name_and_play
    click_button "ROCK"
  end
  
  scenario "choosing a weapon should direct to the results page" do
    expect(page).to have_current_path("/results")
  end
end
