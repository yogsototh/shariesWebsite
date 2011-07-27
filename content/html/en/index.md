-----
title: YPassword
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
    <div id="blocktitle">Easy, Secure &amp; Portable Password Manager</div>
    <div id="blocktext">
        <p> One different password for each website.  <br/>
            If some are compromised, there is not way to find another one.<br/>
            You only have to remember one password.</p></div>
     <div id="getit">
        <a href="<%=itunesurl%>"><img src="/img/main/GetIt.png"/></a></div>
     <div class="flush"></div>
</div>

<div id="easy" class="slideshow">
    <img src="/img/main/iPhone_Easy.png" alt="main view" class="rightimage" />
    <h3>Easy</h3>
    <p>Remember only one Master Password</p>
    <ol>
    <li>Tab "go to website"</li>
    <li>Paste</li>
    <li>Enjoy</li>
    </ol>
    <ol>
    <li>Tap on login or password, it's copied</li>
    <li>Go in any other app</li>
    <li>Paste</li>
    <li>Enjoy</li>
    </ol>
    <div class="flush"></div>
</div>

<div id="secure" class="slideshow">
    <img src="/img/main/iPhone_pw.png" class="clean" alt="Main Password View" class="leftimage" />
    <h3>Secure</h3>
    <p>Only strong password provided using SHA1</p>
    <p>Knowing one of your password make it almost
    impossible to know your master password or other 
    passwords.</p>
    <div class="flush"></div>
</div>

<div id="portable" class="slideshow">
    <h3 style="width: 100%">Portable</h3>
    <p>You can use YPassword on: </p>
    <ul>
        <li> iPhone, </li>
        <li> Mac using Dashboard widget, </li>
        <li> on UNIX system using the command line <code>openssl</code> </li>
    </ul>
    <div class="flush"></div>
</div>

<div class="flush"></div>

<div class="center">
<a href="http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=436268354&mt=8">
    <img src="/img/main/Available_appstore.png" alt="Get it!"/>
</a>
</div>
