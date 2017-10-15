feature 'takes users move and returns result' do
  scenario 'user chooses a move' do
    visit '/'
    fill_in :player_name, with: "Edward"
    click_button "Submit"
    click_button "Rock"
    expect(page).to satisfy{|page| page.has_content?("You Win") or page.has_content?("You Lose")}
  end
end
