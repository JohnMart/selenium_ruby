# when
When(/^(?:.*) (?:add|adds) an item to the cart$/) do
  @search_string = @search_terms[:keychain]
  search_page.search_for_item(@search_string)
  @browser.p(class: /.*card-meta-row.*/, text: /#{@search_string}/).click
  @browser.select(id: 'inventory-variation-select-0').select(/Only keychain.*/)
  @browser.button(text: 'Add to cart').click
end

# then
Then(/^the item is displayed$/) do
  expect(@browser.link(class: /.*listing-title.*/, text: /#{@search_string}/).exist?).to be true
end

# and
And(/^(?:.*) (?:navigate|navigates) to the cart page$/) do
  cart_page.navigate_to_cart
end