var mail = {
    sender='me',
    recipients=['a','b'],
    address={
        name:"bla",
        email:"a@b.com"
    }
    };

//OR
var mail=new Node("mail",
    new Node("subject","hi"),
    new Node("recipients","a","b"),
//    new Node("recipients",new Node("a"),new Node("b")),
    new Node("sender",
        new Node("name","bla"),
        new Node("email","a@b.com")
    )
);
