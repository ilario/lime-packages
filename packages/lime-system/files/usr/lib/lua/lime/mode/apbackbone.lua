#!/usr/bin/lua

local apbackbone = {}

apbackbone.wifi_mode="ap"

function apbackbone.setup_radio(radio, args)
--!	checks("table", "?table")

	return wireless.createBaseWirelessIface(radio, apbackbone.wifi_mode, "name", args)
end

return apbackbone
