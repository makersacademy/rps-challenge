feature "Rock, Paper, Scissors, Spock, Lizard" do

  # Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

  scenario 'the game allows you to chose Spock' do
    visit_page_and_register
    click_button('Spock')
    expect(page).to have_content 'Vic chose SPOCK!'
  end

end
