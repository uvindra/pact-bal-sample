// This is an empty Ballerina class autogenerated to represent the `java.time.Instant` Java class.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen java.time.Instant

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `java.time.Instant` class.
@java:Binding {'class: "java.time.Instant"}
public distinct class Instant {

    *java:JObject;

    # The `handle` field that stores the reference to the `java.time.Instant` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.time.Instant` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.time.Instant` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string? {
        return java:toString(self.jObj);
    }

}

