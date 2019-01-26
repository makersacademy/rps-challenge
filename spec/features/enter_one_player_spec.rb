describe "Single Player mode", type: :feature do
  it 'starts single player mode if one name is given.' do
    sign_in_single_player
    expect(page).to have_content("someguy V computer")
  end
end
