import ballerina/http;

service / on new http:Listener(9090) {
    resource function get greeting(string content) returns error?|Greeting {
        return {"id": 1, "content": "Message: " + content + "!"};
    }

    resource function post createWifiAccount(string name, string password) returns error?|WifiAccount {
        return {id: 1, user: name, password: password, content: "Hello, " + name + "!. Your password is " + password + "."};
        
    }
}

type Greeting record {
    int id;
    string content;
};

type WifiAccount record {
    int id;
    string user;
    string password;
    string content;
};
