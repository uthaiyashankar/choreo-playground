import ballerina/http;
import ballerina/io;

public function main() {
    io:println("Hello, World!");
}

service / on new http:Listener(9090) {
    resource function get greeting(string name = "World") returns error?|Greeting {
        return {id: 1, content: "Hello, " + name + "!"};
    }
}

type Greeting record {
    int id;
    string content;
};
