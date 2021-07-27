managers.network:session():send_to_peers("mission_ended", false, 0)
game_state_machine:change_state_by_name("gameoverscreen")

[[
function IngameCleanState:on_server_left()
	print("[IngameCleanState:on server_left]")
	game_state_machine:change_state_by_name("server_left")
end
function IngameCleanState:on_kicked()
	print("[IngameCleanState:on on_kicked]")
	game_state_machine:change_state_by_name("kicked")
end
function IngameCleanState:on_disconnected()
	game_state_machine:change_state_by_name("disconnected")
end
]]