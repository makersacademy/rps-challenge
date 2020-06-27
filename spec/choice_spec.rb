feature 'ability to select rock, paper, scissors' do
  scenario "So I can make a choice, I would like to select either rock, paper, scissors" do
    visit('/')
    fill_in "player_one_name", :with => "Matthew"
    click_button "submit"
    select 'Rock', from: 'choice'
    click_button "submit"
    expect(page).to have_content 'You have selected Rock'
  end
end