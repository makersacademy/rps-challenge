describe "Features" do

let(:name) { "Aasfgdh frwesfdg" }
let(:choice) { "Scissors" }

  feature '/' do
    scenario 'visits page' do
      visit('/')
      expect(page).to have_text('Enter names')
    end
  end

  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in('name', with: name)
      click_button('Submit')
      expect(page).to have_content(name)
    end
  end



  feature 'Push Play button' do

    scenario 'Returns Rock, Paper or Scissors' do
      visit('/')
      fill_in('name', with: name)
      click_button('Submit')
      click_button('Play')
      expect(page).to have_content(['Scissors', 'Rock', 'Paper'][0])
    end
  end

  feature 'Allows user to enter selection and play' do
    scenario 'user picks Rock, computer forces scissors, expect win!' do
      visit('/')
      fill_in('name', with: name)
      click_button('Submit')
      select('Rock', from: 'Select_Box')
      click_button('Play')  
      expect(page.text).to match('Winner|Loser|Draw')
    end
  end
end
