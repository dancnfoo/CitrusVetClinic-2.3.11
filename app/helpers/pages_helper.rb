module PagesHelper
  def link_class(link_path)
    # Test / and /index.html separately as when using regex "/" matches all URIs
    if link_path == root_path || link_path == index_path
      return request.request_uri == root_path || request.request_uri == index_path ? @link_class : ""
    end
    # Match link URI with request URI. Highlight link if matches
    if /#{link_path}/ =~ request.request_uri
      @link_class
    end 
  end
end
