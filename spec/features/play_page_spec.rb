feature "play page:" do

  before do
    visit('/')
    click_button('Original')
    click_button('one-player')
    fill_in :player_1, with: "Ed"
    click_button 'Submit'
  end

  scenario "user sees name" do
    expect(page).to have_content "Ed's turn"
  end

  scenario "user sees three options" do
    expect(page.find('#rockpic')['src']).to have_content 'rock.png'
    expect(page.find('#paperpic')['src']).to have_content 'paper.png'
    expect(page.find('#scissorspic')['src']).to have_content 'scissors.png'
  end

  scenario "user can choose rock" do
    choose_rock
  end

  scenario "user can choose paper" do
    choose_paper
  end

  scenario "user can choose scissors" do
    choose_scissors
  end

end
