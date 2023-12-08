
if ngx.var.http_host:match(".com") 
then
	license_domain = "license.etas-cn.com"
	www_domain = "www.etas-cn.com"
end


if ngx.header.content_type:match("html") or ngx.header.content_type:match("xml") or ngx.header.content_type:match('javascript')
then
	ngx.arg[1] = ngx.arg[1]:gsub("www.etas.com",  www_domain)
	ngx.arg[1] = ngx.arg[1]:gsub("license.etas.com",  license_domain)

end


if ngx.header.content_type:match("html")
then
	if ngx.var.http_cf_ipcountry == "CN"
	then
		ngx.arg[1] = ngx.arg[1]:gsub('</body>', '<script src="/proxy/tip-cn.js?v=1.0.0"></script></body>')
	else
		ngx.arg[1] = ngx.arg[1]:gsub('</body>', '<script src="/proxy/tip.js?v=1.0.0"></script></body>')
	end
end

