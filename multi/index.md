-----
title: YPassword
noSubMenu: true
menupriority: 1
-----
<% content_for :title do %>
    <a href="http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8">Get it! &raquo;</a>
<% end %>

<div id="securecontent" class="slideshow big">
    <div class="inner">
        <div class="leftcontent">
            <img src="/img/main/iPhone pw.png" class="clean" alt="main password view" style="float:left" />
        </div>
        <div class="rightcontent">
            <h3>Secure</h3>
            YPassword use SHA1
        </div>
    </div>
    <div class="flush"></div>
</div>

<div id="easycontent" class="slideshow big"><div class="inner">
        <div class="rightcontent">
            <img src="/img/main/iPhone_Easy.png" alt="main view" style="display:block;margin-left:0;float:right"/>
        </div>
        <div class="leftcontent">
            <h3>Easy</h3>
            You remember only one password the rest follow.
            If you click on "go to website" you are redirected to the website.
            Your password is copied, you can paste it.
        </div>
    </div>
    <div class="flush"></div>
</div>

<div id="portablecontent" class="slideshow big">
    <div class="inner">
        You can use YPassword on 
        <ul>
            <li> iPhone, </li>
            <li> Mac using Dashboard widget, </li>
            <li> on UNIX system using the command line <code>openssl</code> </li>
        </ul>
    </div>
    <div class="flush"></div>
</div>

<div class="flush"></div>
<%= block("Get it!", 
          "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8",
          "On the Apple Store", 
          "clickable") %>

<div class="flush"></div>
