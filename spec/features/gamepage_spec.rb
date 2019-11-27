describe "Game page", type: :feature do
  before do
    visit '/'
    fill_in 'name', with: 'Marketeer'
    click_button 'Enter'
  end

  specify 'it has a title' do
    expect(page).to have_selector('h1', text: "Rock Paper Scissors")
  end

  specify 'the name of the player is under the title' do
    expect(page).to have_selector('h2', text: "Marketeer")
  end
end
