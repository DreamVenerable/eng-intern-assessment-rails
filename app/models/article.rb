class Article < ApplicationRecord
  def self.search(query)
    where("title LIKE :query OR content LIKE :query", query: "%#{sanitize_sql_like(query)}%")
  end
end
