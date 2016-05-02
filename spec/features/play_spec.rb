feature 'time to play' do
  before do
    visit ('/')
    fill_in :player, with: 'Maru'
    click_button 'Play'
  end

  scenario 'show options' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'picking an option' do
    click_button "Rock"
    expect(page).to have_content "You picked Rock!"
  end

  scenario 'the computer picks an option' do
    click_button "Rock"

    message = find(:css, "#computer").text 

    expect(possible_messages).to include message
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |option| "The Computer picked #{option.to_s.capitalize}!"}
  end

end
