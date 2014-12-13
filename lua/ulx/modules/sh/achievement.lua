function ulx.achievement( calling_ply, target_plys, name )

	for _,x in pairs (player.GetAll()) do
		for k,v in pairs (target_plys) do
			ULib.tsayColor( x, false, team.GetColor(v), v:Nick(), Color(255,255,255,255), " earned the achievement ", Color(255,200,0,255), name)
		end
	end
	
	ULib.tsay( calling_ply, "You faked the achievement " .. name .. " for the players you selected.")

end
local achievement = ulx.command( "Prop Hunt", "ulx achievement", ulx.achievement, "#ach", true, true )
achievement:defaultAccess( ULib.ACCESS_ADMIN )
achievement:addParam{ type=ULib.cmds.PlayersArg }
achievement:addParam{ type=ULib.cmds.StringArg, hint="name", ULib.cmds.takeRestOfLine }
achievement:help( "Fakes an earned achievement" )
