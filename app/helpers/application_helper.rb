module ApplicationHelper

  # ページごとの完全案タイトルを返します。
  def full_title(page_title = '')
    base_title = "MiyazakiPark"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
