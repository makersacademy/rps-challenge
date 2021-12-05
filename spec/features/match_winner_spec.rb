feature "Winner of the match announced" do
  scenario 'winner declared' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("wins!🥳")
  end
end
