# TeamService2
Use TeamService2 to have more control over teams.

### module.FindTeamByName(name)
* name | The name of the team to find. | "Dinosaur"

Returns: game.Teams.Dinosaur (object)

### module.CreateNewTeam(name, autoAssignable, teamColor)
* name | The name of the team you want to create. | "Dinosaur"
* autoAssignable | If the property "AutoAssignable" is either true or false. | true
* teamColor | Uses a BrickColor. | "Really blue"

Returns: (image of it here): https://ibb.co/LRyJC6N

### module.DestroyTeam(name, printResults)
* name | The name of the team you want to destroy. | "Dinosaur"
* printResults | If you want the module to print when it is finished. | true

Returns (image of it here): https://ibb.co/myDccdS and "TeamService2: Successfully destroyed team Dinosaur" https://ibb.co/jhhFgM4

### module.ChangeTeamName(name, nameToChange, printResults)
* name | The name of the team. | "T-Rex"
* nameToChange | The name you want to change it to. | "Dinosaur"
* printResults | If you want the module to print when it is finished. | true

Returns: https://ibb.co/LRyJC6N and https://ibb.co/z2BV60q

### module.ChangeTeamColor(name, color, printResults)
* name | The name of the team. | "Dinosaur"
* color | The color you want to change the team to (uses a BrickColor). | "Deep orange"
* printResults | If you want the module to print when it is finished. | true

Returns: https://ibb.co/R4dPMYF and https://ibb.co/k5gd3vM

### module.AssignPlayerToTeam_v1(teamObject, player, printResults)
* teamObject | The team object, which can be got using the FindTeamByName() function if you haven't got the team object. | game.Teams.Dinosaur
* player | The player (object). | game.Players.AbeTGT
* printResults | If you want the module to print when it is finished. | true

Returns: https://ibb.co/3Bdb4bT and https://ibb.co/1r6x6Vr

### module.AssignPlayerToTeam_v2(teamName, player, printResults)
* teamName | The team name. | "Dinosaur"
* player | The player (object). | game.Players.AbeTGT
* printResults | If you want the module to print when it is finished. | true

Returns: https://ibb.co/3Bdb4bT and https://ibb.co/PtCW1sN

Thanks for using my module! I spent AGES on this documentation.
