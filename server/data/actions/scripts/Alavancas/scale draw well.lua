-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	if item.actionid == 1622 then
		newpos = {x=32354, y=32131, z=9}
		doTeleportThing(cid,newpos)
	end
	return true
end