describe 'Action Page' do

  before do
    sign_in_and_choose_paper
  end

  scenario "after selecting weapon we are taken to 'action' page" do
    expect(page).to have_content "Action!"
  end

  scenario "displays player_1's name" do
    expect(page).to have_content "Jonny"
  end

  scenario "displays player_2's name" do
    expect(page).to have_content "Santa Claus"
  end

  scenario "displays player_1's chosen weapon" do
    expect(page).to have_content "Jonny's chosen weapon:"
  end

  scenario "displays player_2's chosen weapon" do
    expect(page).to have_content "Santa Claus's chosen weapon:"
  end

  scenario "displays the outcome of the contest" do
    expect(page).to have_content "beat" || "loses"
  end

end
