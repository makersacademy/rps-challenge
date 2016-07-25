#Rock-Paper-Scissors-Lizard-Spock#

[Deployed to Heroku with some snazzy CSS](https://rckpprscslzdspk.herokuapp.com/)

```
                                       ,aaa,
                                     ,dP"'Y8,
                                    dP"   `8b
                                   dI      I8
    ,ad88b,                       ,8'      I8d88b,
   d8"' `"8,                      fP      ,8"  `"8,
   8I     `8,                     8'      dP     I8
   8b      `8,                   ,8       8'     8I
   I8,      Ib,                  dP      ,8      8I
 ad88b,     `Yb                 ,8'      I8      8I
dP' `8b,     `8,                dP       IP      8I
8'   `8I      "8,              ,8'       8I      8'
8     Yb,      "8,            ,8'        8'      8
8     `8I       Ib,           dP        ,8      ,8
8,     `8,      `8I          ,8'        dP      I8
8I      YI       `8,         dP        ,8'      8I
Ib      `8,       `8,       ,8'        8P       8'
I8       8I        Yb       dP        f8'       8
`8,      I8,       `8,     dP'        8I       ,8
 8I      `8I        Yb    dP'        ,8'       I8
 Ib       `8,       `YbaadP'         d8        8I
 `8,       YI         `""'           8P        8'
  Ib,      `8,                                 8
  `8I       YI                                ,8
   I8       `"                                I8
   I8                                         I8
   I8                                         I8
   I8                                         I8                        ______
   `8                                         `8,                  _,add8888888bba,.
    8,                                         YI               ,ad8P"'         ``"Yb
    8I                                         `8b,          ,ad8P"'               I8)
    8b                                           "8ba,___,ad8P"'          ,aaaaaaad8P'
    I8                                             `"Y888P"'          ,adPP"""""""''
    `8,                                                             ,dP"'
     8I                                                           ,8P"
     8b                                                         ,8P"
     I8                                                       ,8P"
     Y8                                                     ,8P"
     I8                                                   ,8P"
     `8,                                                ,dP"
      8I                                              a8P"
      `8,                                          ,d8P'
       `8,                                      ,adP"
        `8,                                  ,adP"'
         8I                               ,adP"
         I8                             ,dP'
         8I                           ,8P'
         8P                         ,dP"
        ,8'                        ,8P'
        dI                        ,8P
       ,8'                       ,8P
       IP                       ,8P
                                8P
                               dP
                              ""
```

This Rock, Paper, Scissors, Lizard, Spock (RPSLS) game uses 7 classes to recreate thhat exciting game we all know and love... `¯\_(ツ)_/¯`

The `Game` class controls the atual gameplay, storing instances of `Player` and `Com` as well as the rules to the game in a matrix(2d Array).

The rules (or logic) matrix contains 3 classes corresponding to outcomes of different weapon selections - each weapon is stored in the `Weapons` class in a hash and has a number paired to its key. The numbers of these weapons point to a specific element within the logic array.

The logic array contains 3 classes: `P1Wins`, `P2Wins` and `Draw`. These all have simple duck typed methods to allow `.result` to be called on whatever outcome is returned, each returning an appropriate string declaring the outcome of the game. These classes were added to avoid a particularly long `if` statement.

If there had been more time the logic of the game would have been extracted to another class.

To run this do the following steps:

```
$ git clone git@github.com:JackOddy/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
