feature 'Choose move' do

  scenario 'have rules' do
    sign_in
    expect(page).to have_content "Rules\nScissors cuts Paper\nPaper covers Rock\n"
  end

  scenario 'shows options' do
    sign_in
    expect(page).to have_xpath("//img[contains(@src,'rock.png')]")
    expect(page).to have_xpath("//img[contains(@src,'paper.png')]")
    expect(page).to have_xpath("//img[contains(@src,'scissors.png')]")
  end

  scenario 'chose a move and play' do
    sign_in
    click_button 'rock'
    expect(page).to have_xpath("//img[contains(@src,'rock.png')]")
    expect(page).to have_content 'Vin Diesel vs. Computer'
  end

end
