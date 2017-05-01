require'./app'

feature 'Play RPS' do
  it "returns rps outcome when play clicked" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    select "Rock", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Sandy result: rock')
    expect(page).to have_content('Player 2 result:')  
  end
end