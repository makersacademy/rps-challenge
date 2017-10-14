require './app'
feature RockPaperScissors do

  let(:p1) { "Quentin" }
  let(:p2) { "Lucas" }

  scenario 'Page welcomes players' do
    visit '/'
    expect(page).to have_content 'Welcome to ROCK - PAPER - SCICCORS!!!! WOOOOOOO'
  end

  scenario 'p1 can enter name' do
    visit '/'
    fill_in :p1, with: p1
    fill_in :p2, with: p2
    click_button 'Submit'
    expect(page).to have_content "#{p1} & #{p2} playing ROCK - PAPER - SCISSORS!"
  end

end
