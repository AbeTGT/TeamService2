--[[
████████╗░██████╗██████╗░
╚══██╔══╝██╔════╝╚════██╗
░░░██║░░░╚█████╗░░░███╔═╝
░░░██║░░░░╚═══██╗██╔══╝░░
░░░██║░░░██████╔╝███████╗
░░░╚═╝░░░╚═════╝░╚══════╝
(TeamService2)
TS2 allows you to control your game's teams, with a cool looking module.

2022 AbeTGT (ValkryieDominus).

Documentation: https://github.com/AbeTGT/TeamService2/tree/main

To use this module in a script, all you need to do is:
- Put the module anywhere (such as ReplicatedStorage)
- Put this code at the top of your script:

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local moduleScript = ReplicatedStorage:WaitForChild("TeamService2")
local module = require(moduleScript)

Thanks for taking this module!
]]

local Teams = game:GetService("Teams")

local Module = {}

function Module.FindTeamByName(name)
	if Teams:FindFirstChild(name) then return Teams[name] end
	for _, team in pairs(Teams:GetChildren()) do
		if team.Name:sub(1, name:len()):lower() == name:lower() then
			return team
		end
	end
end

function Module.CreateNewTeam(name, autoAssignable, teamColor)
	local newTeam = Instance.new("Team", Teams)
	newTeam.TeamColor = BrickColor.new(teamColor)
	newTeam.Name = name
	newTeam.AutoAssignable = autoAssignable
end

function Module.DestroyTeam(name, printResults)
	local TeamToDestroy = Teams:WaitForChild(name)
	if TeamToDestroy then
		TeamToDestroy:Destroy()
		if printResults == true then
			print("TeamService2: Successfully destroyed team "..name)
		end
	end
end

function Module.ChangeTeamName(name, nameToChange, printResults)
	local TeamToChange = Teams:WaitForChild(name)
	if TeamToChange then
		TeamToChange.Name = nameToChange
		if printResults == true then
			print("TeamService2: Successfully changed team name to "..nameToChange)
		end
	end
end

function Module.ChangeTeamColor(name, color, printResults)
	local ColorToChange = Teams:WaitForChild(name)
	if ColorToChange then
		ColorToChange.TeamColor = BrickColor.new(color)
		if printResults == true then
			print("TeamService2: Successfully changed team color to "..color)
		end
	end
end

function Module.AssignPlayerToTeam_v1(teamObject, player, printResults)
	local TeamToAssign = teamObject
	if TeamToAssign then
		if player then
			player.Team = teamObject
			if printResults == true then
				print("TeamService2: Successfully changed "..player.Name.."'s team to "..teamObject.Name)
			end
		end
	end
end

function Module.AssignPlayerToTeam_v2(teamName, player, printResults)
	local TeamToAssign = game.Teams:WaitForChild(teamName)
	if TeamToAssign then
		if player then
			player.Team = TeamToAssign
			if printResults == true then
				print("TeamService2: Successfully changed "..player.Name.."'s team to "..TeamToAssign.Name.." using v2")
			end
		end
	end
end

return Module
