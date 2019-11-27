shared_examples "headings" do
  specify 'it has a title' do
    expect(page).to have_selector('h1', text: "Rock Paper Scissors")
  end

  specify 'the name of the player is under the title' do
    expect(page).to have_selector('h2', text: "Marketeer")
  end
end

describe "Game page", type: :feature do
  before do
    visit '/'
    fill_in 'name', with: 'Marketeer'
    click_button 'Enter'
  end

  include_examples "headings"

  specify "there is no notification about the move before moving" do
    expect(page).not_to have_content 'You selected: '
  end

  context "choosing Rock" do
    before { click_button 'Rock' }

    include_examples "headings"

    specify "you can select rock and get confirmation" do
      expect(page).to have_content 'You selected: Rock'
    end
  end

  context "choosing Paper" do
    before { click_button 'Paper' }

    include_examples "headings"

    specify "you can select paper and get confirmation" do
      expect(page).to have_content 'You selected: Paper'
    end
  end

  context "choosing Scissors" do
    before { click_button 'Scissors' }

    include_examples "headings"

    specify "you can select scissors and get confirmation" do
      expect(page).to have_content 'You selected: Scissors'
    end
  end
end
