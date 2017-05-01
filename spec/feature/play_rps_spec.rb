require'./app'

feature 'Play RPS' do
  it "returns rps outcome when play clicked" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    click_button('RPS!')
    expect(page).to have_content('Sandy result:')
    expect(page).to have_content('Computer result:')  
  end
end