


# My views on sharing functionalities between Delphi and Java

1. **Use a backing database, persistent storage or file cache (better suited for simple batches such as MorningStar price import)**.
In practice, the legacy system (entire batches or parts of it) would do whatever computation and processing it has to do. The computation result would then be persisted to database. Java/Play can then take it on from there. This also applies to staggered situations where for a certain batch parts of it are in delphi and some parts in Java and the remaining parts in delphi. Databases can store the state between each of those transitional steps.


2. **Update complex batches for SOA support which enables cross-origin resource sharing across domain-boundaries**.
For complex batches like CGT, my recommendation is to decouple it into specific tasks or services. These services should be written and maintained in Delphi.

> i. Decouple existing batches into bits of tasks. Those tasks should be service oriented in nature and not just static utilities.
> ii. Create RESTFul API endpoints for each of those services.
> iii. Java/Play would be able to access those endpoints via HTTP using CORS.

3. **Pas2jni**
This should be the last option because of the amount of complexity involved plus current legacy system is 32bits and is't compatible with 64bit JVM.
