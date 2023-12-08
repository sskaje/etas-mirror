
if ngx.var.http_host:match(".com") 
then
	license_domain = "license.etas-cn.com"
	www_domain = "www.etas-cn.com"
end



if ngx.header.content_type:match("html") or ngx.header.content_type:match("xml")
then
	ngx.arg[1] = ngx.re.gsub(ngx.arg[1], "www.etas.com", ngx.var.http_host)
	ngx.arg[1] = ngx.re.gsub(ngx.arg[1], "matomo", "")
end

if ngx.var.uri and string.find(ngx.var.uri, 'sitemap.xml')
then
	ngx.arg[1] = ngx.re.gsub(ngx.arg[1], "www.etas.com", ngx.var.http_host)
	-- eof
	if ngx.arg[2]
	then
	-- ngx.arg[1] = ngx.re.gsub(ngx.arg[1], "www.etas.com", ngx.var.http_host)
	end
end


if ngx.header.content_type:match("html")
then
	if ngx.var.http_cf_ipcountry == "CN"
	then
		ngx.arg[1] = ngx.arg[1]:gsub('</body>', '<script src="/proxy/tip-cn.js?v=1.0.0"></script></body>')
	else
		ngx.arg[1] = ngx.arg[1]:gsub('</body>', '<script src="/proxy/tip.js?v=1.0.0"></script></body>')
	end

	ngx.arg[1] = ngx.arg[1]:gsub('license.etas.com', license_domain);
end
