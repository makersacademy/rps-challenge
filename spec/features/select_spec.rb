feature 'Selecting weapon' do

  before :each do
    sign_in_and_play
  end

  scenario "Player is able to choose a weapon" do
    visit('/play')
    click_button "rock"
    visit('/select')
    expect(page.text).to have_content "rock"
  end
end
