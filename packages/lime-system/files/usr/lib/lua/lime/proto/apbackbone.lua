#!/usr/bin/lua

local apbackbone_mode = require("lime.mode.apbackbone")

local apbackbone = {}

function apbackbone.configure(args)
end

function apbackbone.setup_interface(ifname, args)
	if ifname:match("^wlan%d+."..apbackbone_mode.wifi_mode.."backbone$") then
		local libuci = require "uci"
		local uci = libuci:cursor()

		--! sanitize passed ifname for constructing uci section name
		--! because only alphanumeric and underscores are allowed
		local networkInterfaceName = network.limeIfNamePrefix..ifname:gsub("[^%w_]", "_")

		uci:set("network", networkInterfaceName, "interface")
		uci:set("network", networkInterfaceName, "proto", "none")
		uci:set("network", networkInterfaceName, "mtu", "1536")
		uci:set("network", networkInterfaceName, "auto", "1")

		uci:save("network")
	end
end

return apbackbone
