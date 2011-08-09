---
title: Aide
noSubMenu: false
no_entete: true
menupriority: 4
---
<% content_for :bodyclass do %>std support<% end %>
<% content_for :js do %>
    <script>
        $.fn.clearOnFocus = function() {
            return this.focus(function(){
                var v = $(this).val();
                $(this).val( v === this.defaultValue ? '' : v );
            }).blur(function(){
                var v = $(this).val();
                $(this).val( v.match(/^\s*$/) ? this.defaultValue : v );
            });
        };
        $('input[type=text]').clearOnFocus();
        $('textarea').clearOnFocus();
    </script>
<% end %>

## A problem? A remark? 

<form name="email" id="email" action="/contact" method="post">
<input type="text" name="name" value="Your Name"/>
<input type="text" name="mail" value="Your email"/>
<textarea name="body" id="bodytextarea" value="">Enter your comment here</textarea>
<input type="submit" value="Send"/>
</form>

<br/>

By mail:
<a class="bluebutton big" href="&#109;&#097;&#105;&#108;&#116;&#111;:&#121;&#097;&#110;&#110;&#046;&#101;&#115;&#112;&#111;&#115;&#105;&#116;&#111;&#046;&#104;&#101;&#108;&#112;&#064;&#103;&#109;&#097;&#105;&#108;&#046;&#099;&#111;&#109;">&#121;&#097;&#110;&#110;&#046;&#101;&#115;&#112;&#111;&#115;&#105;&#116;&#111;&#046;&#104;&#101;&#108;&#112;&#064;&#103;&#109;&#097;&#105;&#108;&#046;&#099;&#111;&#109;</a>


Via twitter: 

<a class="big bluebutton" href="http://twitter.com/yogsototh">@yogsototh</a>
