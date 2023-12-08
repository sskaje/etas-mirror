ngx.header.content_length = nil

-- ngx.header.test_mode = ngx.var.http_cf_ipcountry

if ngx.header.content_type:match("image") or
	ngx.header.content_type:match("javascript") or 
	ngx.header.content_type:match("style")
then
	ngx.header.cache_control = "public, max-age=604800"
end



