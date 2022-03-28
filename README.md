# Write Native Modules with Swift and Kotlin

These instructions are a minimal step by step process. For context around the code snippets, please refer to the [commit history](https://github.com/NeilSMyers/NativeModuleDemo/commits/main), or the other [branches](https://github.com/NeilSMyers/NativeModuleDemo/branches) for *start* and *end* points to compare. The code also contains comments for more info. To learn more about Native Modules you can read [React Docs](https://reactnative.dev/docs/native-modules-intro), [How to write Native Modules](https://around25.com/blog/how-to-write-native-modules-for-react-native/), or [Swift in React Native](https://teabreak.e-spres-oh.com/swift-in-react-native-the-ultimate-guide-part-1-modules-9bb8d054db03).

### ios

1.  create swift class

2.  create bridging header

         `#import "React/RCTBridgeModule.h`

3.  write swift

4.  create obj-c class
    ```
    #import "React/RCTBridgeModule.h"
    @interface RCT_EXTERN_MODULE(*YOUR MODULE*, NSObject)
    @end
    ```
5.  use in RN
    ```js
    import { NativeModules } from "react-native"
    console.log(NativeModules.*YourModule*)
    ```

### android

1. add kotlin

   - app/build.gradle - `apply plugin: "kotlin-android"`
   - build.gradle
     - buildscript -> repositories - `maven { url 'https://dl.bintray.com/kotlin/kotlin-eap'}`
     - buildscript -> dependencies - `classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:1.5.21"` (version will change)

2. create kotlin class

3. write kotlin

4. create package class

5. add instance of package class to the MainApplication getPackages() method
   `packages.add(new *Your Package*());`

6. use in RN
   ```js 
   import { NativeModules } from "react-native"
   console.log(NativeModules.*YourModule*)
   ```
   
END
