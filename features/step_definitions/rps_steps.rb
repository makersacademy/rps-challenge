module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^(?:|I )am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

Given(/^I enter my name as "([^"]*)"$/) do |name|
  fill_in('name', with: name)
end

Given(/^I click the "([^"]*)" button$/)  do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |string|
  page.should have_content(string)
end
