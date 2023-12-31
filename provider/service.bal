import ballerina/http;

public  type Geo record {|
    string lat;
    string lng;
|};

public type Address record {|
    string street;
    string suite;
    string city;
    string zipcode;
    Geo geo;
|};

public type Company record {|
    string name;
    string catchPhrase;
    string bs;
|};

public type User record {|
    int id;
    string name;
    string username;
    string email;
    Address address;
    string phone;
    string website;
    Company company;
|};

User[] users = [
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
  {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
      "geo": {
        "lat": "-43.9509",
        "lng": "-34.4618"
      }
    },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains"
    }
  }
];


service / on new http:Listener(9090) {
    resource function get users(http:Request request) returns http:Response {
        string[] headerNames = request.getHeaderNames();

        string[] xHeaders = [];

        foreach string headerName in headerNames {
            if (headerName.startsWith("x-")) {
                xHeaders.push(headerName);
            }
        }

        map<string> responseHeaders = {};
        foreach var xHeader in xHeaders {
            string|http:HeaderNotFoundError header = request.getHeader(xHeader);
            if (header is string) {
                responseHeaders[xHeader] = header;
            }
        }

        http:Response response = new;
        foreach string key in responseHeaders.keys() {
            response.setHeader(key, responseHeaders[key] ?: "");
        }

        response.setJsonPayload(users);

        return response;
    }
}