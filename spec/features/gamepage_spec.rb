shared_examples "headings" do
  specify 'it has a title' do
    expect(page).to have_selector('h1', text: "Rock Paper Scissors")
  end

  specify 'the name of the player is under the title' do
    expect(page).to have_selector('h2', text: "Marketeer")
  end
end

shared_examples "results" do
  specify "the computer should select an option" do
    expect(page).to have_content /Computer chose: (Rock|Paper|Scissors)/
  end

  specify "the winner is declared" do
    regex = /(Marketeer wins!|Computer wins!|It's a draw)/
    expect(page).to have_content regex
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

  specify "there is no notification about the computer's choice" do
    expect(page).not_to have_content 'Computer chose: '
  end

  specify "there is no declaration of the result" do
    regex = /(Marketeer wins!|Computer wins!|It's a draw)/
    expect(page).not_to have_content regex
  end

  context "choosing Rock" do
    before { click_button 'Rock' }

    include_examples "headings"

    specify "you can select rock and get confirmation" do
      expect(page).to have_content 'You selected: Rock'
    end
    
    include_examples "results"
  end

  context "choosing Paper" do
    before { click_button 'Paper' }

    include_examples "headings"

    specify "you can select paper and get confirmation" do
      expect(page).to have_content 'You selected: Paper'
    end

    include_examples "results"
  end

  context "choosing Scissors" do
    before { click_button 'Scissors' }

    include_examples "headings"

    specify "you can select scissors and get confirmation" do
      expect(page).to have_content 'You selected: Scissors'
    end

    include_examples "results"
  end
end
