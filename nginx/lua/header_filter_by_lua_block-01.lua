-- if ngx.var.uri and string.find(ngx.var.uri, 'sitemap.xml')
-- then
	ngx.header.content_length = nil
-- end

-- ngx.header.test_mode = ngx.var.http_cf_ipcountry

if ngx.header.content_type:match("image") or
	ngx.header.content_type:match("javascript") or 
	ngx.header.content_type:match("style")
then
	ngx.header.cache_control = "public, max-age=604800"
end
