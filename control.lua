script.on_event({defines.events.on_tick},
   function (e)
      if e.tick % 10 == 0 then --common trick to reduce how often this runs, we don't want it running every tick, just every 30 ticks, so twice per second
         for index, surface in pairs(game.surfaces) do
            for _, node in pairs(surface.find_entities_filtered({name="routing-node"})) do
               CHAT_DEBUG(node.name .. " at {" .. node.position.x .. "," .. node.position.y .. "}")
               
               for itemname, itemnumber in pairs(node.get_inventory(1).get_contents()) do
                  CHAT_DEBUG("    " .. itemname .. ": " .. itemnumber)
               end
            end
         end
      end
   end
)
VERBOSE_ECHO = false

function CHAT_DEBUG(text)
      if VERBOSE_ECHO == true then
      for _, player in game.players do
         player.print(text)
      end
   end
end