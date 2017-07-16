# initialize the page objects if not already set.

module PageObjectInit
  def search_page
    @search_page ||= SearchPage.new(@browser)
  end

  def cart_page
    @cart_page ||= CartPage.new(@browser)
  end
end

World(PageObjectInit)