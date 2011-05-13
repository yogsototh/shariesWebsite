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

<% content_for :title do %>
    <a href="http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8">YPassword<span class="nicer">&raquo;</span></a>
<% end %>

<div id="mainlinks">
<%= block("Secure","javascript:return false;","SHA1 ensure strong password generation","left secure") %>
<%= block("Easy","javascript:return false;","Remember only one master password", "left easy") %>
<%= block("Portable","javascript:return false;","Dashboard widget, Javascript applet, etc...", "left portable") %>
</div>

<div class="flush"></div>

<div id="securecontent" class="slideshow big"><div class="inner">
YPassword use SHA1
<img src="/Scratch//img/blog/2011-05-05-Screenshots/main_password.jpg" alt="main password view" style="display:block;"/>
</div></div>

<div id="easycontent" class="slideshow big"><div class="inner">
You remember only one password the rest follow.
<img src="/Scratch//img/blog/2011-05-05-Screenshots/main_view.jpg" alt="main view" style="display:block;"/>
If you click on "go to website" you are redirected to the website.
Your password is copied, you can paste it.
</div></div>

<div id="portablecontent" class="slideshow big">
    <div class="inner">
        You can use YPassword on 
        <ul>
            <li> iPhone, </li>
            <li> Mac using Dashboard widget, </li>
            <li> on UNIX system using the command line <code>openssl</code> </li>
        </ul>
    </div>
</div>

<div class="flush"></div>
<%= block("Get it!", "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8","On the Apple Store") %>

<div class="flush"></div>
