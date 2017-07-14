class SearchPage
  include PageObject

  # objects on the search page.
  button(:search_button, value: 'Search')
  div(:no_results, class: 'empty-state')
  div(:search_results, class: 'col-group overflow-auto pl-xs-0')
  text_field(:search_bar, id: 'search-query')

  # methods performed on the departments page objects.
  def search_for_item(item)
    search_bar_element.set item
    search_button
  end

  def results_page?
    search_results? or no_results?
  end
end