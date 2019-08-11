# Register page

feature '#Register page' do
  scenario "- has a field for player's name" do
    goto_register
    expect(page).to have_field('player_name')
  end

  scenario "- has a submit button" do
    goto_register
    expect(page).to have_button('Register & Play')
  end

end
