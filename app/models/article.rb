class Article < ApplicationRecord
  # Searches for records with titles or content containing the specified query,
  # using SQL 'LIKE' for partial matching and ensuring sanitized input to prevent SQL injection.
  def self.search(query)
    where("title LIKE :query OR content LIKE :query", query: "%#{sanitize_sql_like(query)}%")
  end
end
