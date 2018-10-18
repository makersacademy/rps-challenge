feature "results page" do
  before do
    enter_name_and_play
    click_button "ROCK"
  end
  
  scenario "choosing a weapon should direct to the results page" do
    expect(page).to have_current_path("/results")
  end

  scenario "should confirm weapon choice on results page" do
    expect(page).to have_content("Alice chose ROCK")
  end
end
