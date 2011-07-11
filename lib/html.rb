def meta_tags
    t=tags
    if t.length>0
        return %{<meta name="keywords" content="#{t}">}
    end
end

def meta_alternate
    res=[]
    @conf.languages.each do |lang|
        item_for_lang=item_of_language(lang)
        if not item_for_lang.nil?
            res <<= %{<link rel="alternate" lang="#{ lang }" xml:lang="#{ lang }" title="#{ item_for_lang[:title] }" type="text/html" hreflang="#{ lang }" href="#{ item_for_lang.reps[0].path }" />}
        end
    end
    return res.join("\n")
end

def choixrss
    return %{<a id="rss" href="#{@config[:rss_uri][@conf.language.intern]}">#{ tradOf(:subscribe) }</a>}
end

def choixlang
    @conf.languages.map do |l|
        dest=@item_rep.path.sub(%r{#{@config[:webprefix]}/../}, %{#{@config[:webprefix]}/#{l}/}) 
        if @item_rep.path != dest
            %{<a href="#{dest}" onclick="setLanguage('#{l}')">#{ tradOfKeywordIn(:switchTo,l)}</a>}
        else
            nil
        end
    end.join()
end

def bodyclass
    if @item[:content_for_bodyclass].nil?
        "std"
    else
        @item[:content_for_bodyclass]
    end
end

def page_title
    if @item[:content_for_title].nil?
        h2text=@item[:title]
    else
        h2text=@item[:content_for_title]
    end
    tmp=%{<h1>YPassword</h1><h2>#{h2text}<h2>}
    unless @item[:subtitle].nil? and @item[:content_for_subtitle].nil?
        if @item[:content_for_subtitle].nil?
            h3text=@item[:subtitle] 
        else 
            h3text=@item[:content_for_subtitle]
        end
        tmp <<= %{<h3>#{h3text}</h3>}
    end
    return tmp
end

def last_modified_tag
    return %{#{tradOf(:last_modified)}: <time>#{gitmtime.strftime(@config[:dateFormat][@conf.language.intern])}</time>}
end

