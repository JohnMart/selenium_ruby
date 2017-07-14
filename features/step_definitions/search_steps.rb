# given

# when
When(/^(?:.*) (?:search|searches) for an (.*)$/) do |item|
  search_page.search_for_item(item)
end

# then
Then(/^the search results page is displayed$/) do
  expect(search_page.results_page?).to be true
end

# and