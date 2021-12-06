feature "Bot's turn" do
  scenario 'bot picks rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("Bot's choice:")
  end
end
