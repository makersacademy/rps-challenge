## Rock-Paper-Scissors Model
----------

|  Objects    |      Methods          |      Behaviours              |
|-------------|-----------------------|------------------------------|
|**Player**   |name                   |=> string name                |
|             |move                   |=> symbol move                |
|-------------|-----------------------|------------------------------|
|**Game**     |MOVES_TABLE            |=> which move wins over which |
|             |players                |=> passed in .new()           |
|             |ask_player_move(player)|=> asks player to make move   |
|             |winner(*players)       |=> player who wins            |
|-------------|-----------------------|------------------------------|
