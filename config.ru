require 'rubygems'
require 'rack'
require 'rack/contrib'
require 'rack/trystatic'
require 'mime/types'
require 'pony'

use Rack::Deflater
use Rack::ETag

$rootdir="site"

$errorFile='site/404.html'
$mailFile='site/mail_sent.html'

class MyMain < Rack::TryStatic
    def call(env) 
        request = Rack::Request.new(env)
        if request.path == "/contact" and request.post?
            Pony.mail( :to => "yann.esposito@gmail.com",
                        :from => request[:mail],
                        :subject => 'YPassword support',
                        :body => request[:body])
            return [200, {
                "Last-Modified"  => File.mtime($mailFile).httpdate,
                "Content-Type"   => "text/html",
                "Content-Length" => File.size($mailFile).to_s
            }, File.read($mailFile)]
        else
            super
        end
    end
end

use MyMain,
    :root => $rootdir,                              # static files root dir
    :urls => %w[/],                                 # match all requests 
    :try => ['.html', 'index.html', '/index.html']  # try these postfixes sequentially

run lambda { [404, {
                "Last-Modified"  => File.mtime($errorFile).httpdate,
                "Content-Type"   => "text/html",
                "Content-Length" => File.size($errorFile).to_s
            }, File.read($errorFile)] }
