feature "Rock Paper Scissors" do
  scenario 'Player can input his/her name' do
    visit('/')
    fill_in('player_1', :with => 'Marco')
    click_button('Start')
    expect(page).to have_content "Marco - Choose Wisely..."
  end
end