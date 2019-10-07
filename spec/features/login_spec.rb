RSpec.feature "player inputs name to log-in" do
  scenario "player submits name displays name" do
    sign_in_and_submit
    expect(page).to have_content("An")
  end

  scenario "start game to see option rock" do
    sign_in_and_submit
    expect(page).to have_content('Rock')
  end

  scenario "start game to see option paper" do
    sign_in_and_submit
    expect(page).to have_content('Paper')
  end

  scenario "start game to see option scissors" do
    sign_in_and_submit
    expect(page).to have_content('Scissors')
  end

end
