# class AppDelegate
#   def application(application, didFinishLaunchingWithOptions:launchOptions)
#     rootViewController = UIViewController.alloc.init
#     rootViewController.title = 'sot'
#     rootViewController.view.backgroundColor = UIColor.whiteColor

#     navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

#     @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
#     @window.rootViewController = navigationController
#     @window.makeKeyAndVisible

#     true
#   end
# end

class WebServer < Apex::Server
  port 8080 # defaults to 8080

  get "/" do |r|
   %Q{
   <html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge" />
    <title>sotapp2</title>
    <style>
        html {
            height:100%;
        }
        body {
            background-color: #FFFFFF;
            margin:0;
            height:100%;
        }
    </style>
    <meta name="viewport" content="user-scalable=yes, width=375" />
  </head>
  <body>
     <div id="sotapp2_hype_container" style="margin:auto;position:relative;width:375px;height:559px;overflow:hidden;" aria-live="polite">
         <script type="text/javascript" charset="utf-8" src="sotapp2.hyperesources/sotapp2_hype_generated_script.js?55146"></script>
    </div>
  </body>
  </html>
}
  end

#   layout do 
#  %Q{
# <html>
#   <head>
#     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
#     <meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge" />
#     <title>sotapp2</title>
#     <style>
#         html {
#             height:100%;
#         }
#         body {
#             background-color: #FFFFFF;
#             margin:0;
#             height:100%;
#         }
#     </style>

#     <!-- copy these lines to your document head: -->

#     <meta name="viewport" content="user-scalable=yes, width=375" />


#     <!-- end copy -->

#   </head>
#   <body>
#   <p>HELLO</p>
    
#     <!-- copy these lines to your document: -->

#     <div id="sotapp2_hype_container" style="margin:auto;position:relative;width:375px;height:559px;overflow:hidden;" aria-live="polite">
#         <script type="text/javascript" charset="utf-8" src="sotapp2.hyperesources/sotapp2_hype_generated_script.js?55146"></script>
#     </div>

#     <!-- end copy -->


    


#     <!-- text content for search engines: -->

#     <div style="display:none">

#         <div>Awesome App
# </div>
#         <div>Press Me</div>

#     </div>

#     <!-- end text content: -->

#   </body>
# </html>
#  }  
#   end  

#   get "/" do |r|
#     ""
#   end

  # layout do
  #   "<html>" +
  #   "<head><title>Apex</title></head>" +
  #   "<body>" +
  #   content +
  #   "</body>" +
  #   "</html>"
  # end

  # get "/" do |r|
  #   "<h1>Apex is running. Response: #{r}</h1>" +
  #   "<p><a href='/about'>About Apex</a></p>"
  # end

  # get "/about" do |r|
  #   "<h1>About Apex</h1>" +
  #   "<p><a href='/'>Home</a></p>"
  # end

  # post "/some_post" do |request|
  #   request.headers["User-Agent"]
  # end
end

class GoogleViewController < UIViewController
  def viewDidLoad
    self.view = UIWebView.alloc.init
    url = NSURL.URLWithString("http://localhost:8080/")
    request = NSURLRequest.requestWithURL(url)
    self.view.loadRequest request
  end
end

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @server = WebServer.new
    @server.start_server
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    @window.rootViewController = GoogleViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
end

# class AppDelegate < Apex::Server
  
#   def application(application, didFinishLaunchingWithOptions:launchOptions)
#     @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
#     @window.rootViewController = GoogleViewController.alloc.init
#     @window.makeKeyAndVisible
#     true
#   end

#   port 8080 # defaults to 8080

#   layout do
#     "<html>" +
#     "<head><title>Apex</title></head>" +
#     "<body>" +
#     content +
#     "</body>" +
#     "</html>"
#   end

#   get "/" do |r|
#     "<h1>Apex is running. Response: #{r}</h1>" +
#     "<p><a href='/about'>About Apex</a></p>"
#   end

#   get "/about" do |r|
#     "<h1>About Apex</h1>" +
#     "<p><a href='/'>Home</a></p>"
#   end

#   post "/some_post" do |request|
#     request.headers["User-Agent"]
#   end

# end