--========= Copyright © 2013-2016, Planimeter, All rights reserved. ==========--
--
-- Purpose: Engine entry point
--
--============================================================================--

_INITTIME = love.timer.getTime()

local args = {}
for _, v in ipairs( arg ) do
	args[ v ] = true
end

if ( args[ "-dedicated" ] ) then
	_SERVER	   = true
	_DEDICATED = true

	if ( args[ "-interactive" ] ) then
		_INTERACTIVE = true
	end
end

if ( args[ "-debug" ] ) then
	_DEBUG = true
end

if ( not _SERVER ) then
	_CLIENT = true
end

require( "class" )
require( "engine.shared.require" )
require( "engine" )
