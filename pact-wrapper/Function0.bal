// This is an empty Ballerina class autogenerated to represent the `kotlin.jvm.functions.Function0` Java interface.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen kotlin.jvm.functions.Function0

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `kotlin.jvm.functions.Function0` interface.
@java:Binding {'class: "kotlin.jvm.functions.Function0"}
public distinct class Function0 {

    *java:JObject;

    # The `handle` field that stores the reference to the `kotlin.jvm.functions.Function0` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `kotlin.jvm.functions.Function0` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `kotlin.jvm.functions.Function0` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

}
