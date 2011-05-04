-----
title: YPassword
noSubMenu: true
menupriority: 1
-----
<% content_for :js do %>
<script>
var blocks=["secure","easy","portable"];
function show(name) {
    for ( var i in blocks ) {
        el=blocks[i];
        if (el == name) { continue; }
        // console.log('HIDE: #'+el+'content');
        $('#'+el+'content').hide();
    }
    $('#'+name+'content').show();
    // console.log('SHOW: #'+name+'content');
}

$('document').ready(function() {
    $('.secure').click(function() {show("secure")});
    $('.easy').click(function() {show("easy")});
    $('.portable').click(function() {show("portable")});
    for (var i in blocks) {
        el=blocks[i];
        $('#'+el+'content').hide();
    }
});
</script>
<% end %>
<div id="mainlinks">
<%= block("Secure","javascript:return false;","SHA1 ensure strong password generation","left secure") %>
<%= block("Easy","javascript:return false;","Remember only one master password", "left easy") %>
<%= block("Portable","javascript:return false;","Dashboard widget, Javascript applet, etc...", "left portable") %>
</div>

<div class="flush"></div>

<div id="securecontent" class="slideshow big"><div>
YPassword use SHA1
</div></div>

<div id="easycontent" class="slideshow big"><div>
You remember only one password the rest follow.
</div></div>

<div id="portablecontent" class="slideshow big"><div>
You can use YPassword on 
<ul>
<li> iPhone, </li>
<li> Mac using Dashboard widget, </li>
<li> on UNIX system using the command line <code>openssl</code> </li>
</ul>
</div></div>
