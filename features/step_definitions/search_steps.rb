# when
When(/^(?:.*) (?:search|searches) for an (.*)$/) do |item|
  search_page.search_for_item(item)
end

When(/^(?:.*) (?:navigate|navigates) to an item (.*)$/) do |category|
  @browser.link(id: /catnav-.*-link/, text: category).fire_event :click
end

# then
Then(/^the search results page is displayed$/) do
  expect(search_page.results_page?).to be true
end