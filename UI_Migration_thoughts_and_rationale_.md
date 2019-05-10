# Delphi Migraton Thoughts and Rationale
  
  
## 1. A rich collection of UI components
  
  
> The desktop and swing ecosystem has got a rich collection of visual components which comes with support for configurability and customization. You could create custom components by extending existing components. It is way easier as opposed to the limited options in JavaScript which almost always requires writing your own custom components from scratch.
  
## 2. Web applications requires an indept understanding of HTML, CSS and Javascript
  
  
> Writing web applications of an enterpise sort really requires an in depth understanding of the ins and outs of HTML, CSS and Javascript, as well as browsers limitations (not so much here because we can force users to stick to one web browser). We have to worry about the problem of state and persisting it, and the mechanisms available to you are limited.
  
## 3. The problem of state
  
  
> HTTP is stateless. Web applications should be stateless by design unless there's a good reason to have it stateful. A wizard feature is a stateful feature by design. The whole point of the wizard pattern is to preserve the state of the application between requests. Web application developers workaround this problem by using web brower localstorage but then again that's a stateful solution or some do intermediate AJAX calls as they tansition from one request to the other. Desktop applications are stateful by design and also have native support for concurrency which makes this so easy.  
  
## 4. Platform independence, deployment and launching.
  
  
> Before the introduction of JNLP this was a problem but after Java introduced JNLP it enabled application to be launched on a client desktop by using resources that are hosted on a remote web server. You don't have to install anything on the client's machine (other than JRE).Users will get updates from a centralized remote server just like web applications.
  
  
## 5. High efficiency.
  
  
> With desktop applications you can easily pull down 100K records into the fat-client. You can sort/paginate those records without having to do round-trips to the back-end. This hasn't been an issue working with swing from my experience but web applications aren't meant by design to support such voluminous dataset out of the box. You'd need all kinds of JS workaround to cater for such capabilities. Working with web applications from my experience, i'll set a cap/limit to how many records can be retrieved from the back-end and will have to hit the network for subsequent records including a database dependent ordering of data sets.
  
  
## 6. Superior user experience and flexibility
  
  
> In my experience working and observing the end user's workflow, i have observed that users tend to do multiple tasks at once. They can do this by either relaunching a fresh desktop instance or docking out a screen/module (i don't mean using dialog boxes). For example, a CSM could be in the midst of completing a task and then gets a call from an adviser or team leader while in the middle of this task. It would be counter-productive and inefficient to terminate the current task to attend to this request. Most times these requests can be handled quiclkly without having to exit/terminate the on-going task and while the adviser is still over the phone.The only way to handle such capabilities is by having a UI engine/framework which natively supports docking. Swing and other 3rd party wrappers developed around swing natively supports docking. You don't have to use 3rd party library, it's supported by default unlike web applications which requires some docking JS UI frework to handle such capability. DocMaster (2), IndentityMaster (2) and InvestMaster (2) are classic examples of this situation. With Swing's support for docking you don't have to duplicate these features you can dock out the existing screen.
  
  
## 7. Client side logic & code
  
  
> **Running serious algorithms on the client side is possible but much harder with a web application**. Most times what you'd notice about brower based applications is that they rely heavily on the back-end services for even the most trivial tasks such as sorting a payload/collection/list and field validation. This is possible but requires a awful amout of JS code which produces all kinds of maintainability and complexity issues. Swing grid/tables support sorting/custom sorting out of the box. You don't have to write any more code to support sorting capabilities.
  
## 8. Native suport for concurrency
  
  
> **Java's native support for threads and concurrency results in more efficient desktop swing applications**. You can spawn multiple threads on the client side code to parallelize things like sorting a collection/list without having to hit the backend server. All of this is happening on the client side utilizing client side memory, cpu and other resources. JavaScript does not support multi-threading because the JavaScript interpreter in the browser is a single thread. JavaScript developers use all kinds of callbacks, timeouts, promises to mimic concurrency. This introduces all kinds of callback hell and complexities for enterpise-class applications.
  
## 9. Communicating with O/S system level APIs is natively supported by desktop applications
  
  
> **HTTP and HTML does not allow communicating with O/S system level APIs**. Therefore, it is impossible to print or write to local disk. Most web application users don't need this feature or if they do would have to interface or wrap around some desktop application to achieve this capability.
  
## 10. Better debugging capabilities
  
  