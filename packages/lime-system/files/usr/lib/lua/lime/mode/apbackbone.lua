#!/usr/bin/lua

local ap = {}

ap.wifi_mode="ap"

function ap.setup_radio(radio, args)
	return wireless.createBaseWirelessIface(radio, ap.wifi_mode, "name", args)
end

return ap
