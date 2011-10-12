-----
title: Sharies
noSubMenu: true
menupriority: 1
-----
<% 
def itunesurl
    "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8" 
end
%>
<% content_for :title do %>
    <a href="<%=itunesurl%>">Get it! &raquo;</a>
<% end %>
<% content_for :bodyclass do %>clear<% end %>

<div id="helloblock">
    <div id="logo">
        <img src="/img/main/Logo.png"/></div>
    <div id="blocktitle">Share your stuff!</div>
    <div id="blocktext">
        <p> Once you've read an inspiring book
        <br/> Share it with others, just drop it somewhere
        <br/> Take a photo and make it a sharie!</p></div>
     <div id="getit">
        <a href="<%=itunesurl%>"><img src="/img/main/GetIt.png"/></a></div>
     <div class="flush"></div>
</div>

<div class="slideshow">
    <img src="/img/main/iPhone_Easy.png" alt="main view" class="rightimage" />
    <h3>Share</h3>
    <p>You have an object you want to share?</p>
    <ol>
    <li>Drop it in a public area</li>
    <li>Take a Photo</li>
    <li>Share it!</li>
    </ol>
    <div class="flush"></div>
</div>

<div class="slideshow">
    <img src="/img/main/iPhone_pw.png" class="clean" alt="Main Password View" class="leftimage" />
    <h3>Discover</h3>
    <p>Open _sharies_ and find stuff around you!</p>
    <p>Then just take it!</p>
    <p>Once used, you could share it again.</p>
    <div class="flush"></div>
</div>

<div class="slideshow">
    <h3 style="width=100%">Watch their life</h3>
    <p>You can follow the life of your object.</p>
    <p>You can other people comment</p>
    <div class="flush"></div>
</div>

<div class="flush"></div>

<div class="center">
<a href="http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8">
    <img src="/img/main/Available_appstore.png" alt="Get it!"/>
</a>
</div>
