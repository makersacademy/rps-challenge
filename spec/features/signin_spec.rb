feature "sign in" do

  scenario "expect player to fill in their name" do
    visit '/'
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    expect(page).to have_content 'Vivien'
  end

end
