module UrlsHelper   

   def url_with_protocol(url)     
		/^http/.match(url) ? url : "http://#{url}"   
   end 
	
   def button(*args)
    if args.size == 2
      name = args[0]
      url = args[1]
      content_tag :button, :type => "button", :onclick => "window.location.href =  '#{url_for(url)}'; "  do
        "#{name}"
      end
    elsif args.size == 1
      name = args[0]
      content_tag :button, :type => "button"  do
        "#{name}"
      end
    end
  end
	
end