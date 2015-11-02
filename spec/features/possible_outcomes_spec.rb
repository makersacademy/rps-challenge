require "web_helpers"


feature "plays the game" do
  before(:each) do
    sign_in
    allow_any_instance_of(Game).to receive(:picker).and_return("cat")
  end

  scenario "can win" do
    click_link(@id='goku')
    expect(page).to have_content('GOKU BEATS CAT')
  end

  scenario "can draw" do
    click_link(@id='cat')
    expect(page).to have_content('DRAAAAW')
  end

  scenario "can loose" do
    click_link(@id='patrick')
    expect(page).to have_content('CAT BEATS PATRICK')
  end
end
