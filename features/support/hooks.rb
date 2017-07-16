require 'watir'

Before do
  # setup a list of search terms.
  @search_terms ||= {
    keychain: 'BMW E28 Keychain'
  }
end

# clean up after scenarios.
After('@cart', '@cleanup') do
  # remove items from the cart.
  @browser.links(text: 'Remove').each do |link|
    link.click
  end
end