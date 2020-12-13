# Sequence Diagram

```
alias player="Player"
alias client="Client"
alias server="Server"

player->client:"types in RPS url in browser"
client->server:"Get '/' http request"
server-->client:"200 http response with index view"
client-->player: "render index view with registration form"
player->client: "enter name, click submit button"
client->server: "Post '/name' http request"
server->server: "store name in player object, 303 http response; redirect to Get '/choose' http request"
server-->client: "200 http response with choose view"
client-->player: "render choose view with pick choice form"
player->client: "pick a choice, 1,2,3.. click play button"
client->server: "Get '/play' http request"
server->server: "store choice in player object, randomly choose computer, calculate winner"
server-->client: "200 http response with play view"
client-->player: "render play view with computer choice and winner declaration, and play again button"
player->client: "click play again button"
client->server: "Get '/choose' http request"
server-->client: "200 http response with choose view"
repeat....
```
