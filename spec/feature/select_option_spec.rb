require'./app'

feature 'Select RPS' do
  it "presents three options to choose from" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    click_button('RPS!')
    select "Rock", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Sandy result: rock')
    expect(page).to have_content('Computer result:')  
  end
end