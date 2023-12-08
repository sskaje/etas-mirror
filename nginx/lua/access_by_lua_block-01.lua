--  if ngx.var.uri and string.find(ngx.var.uri, 'sitemap.xml')
--  then
    ngx.req.set_header("Accept-Encoding", nil)
-- end


