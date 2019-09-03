script.on_event({defines.events.on_tick},
   function (e)
      if e.tick % 10 == 0 then --common trick to reduce how often this runs, we don't want it running every tick, just every 30 ticks, so twice per second
         for index, player in pairs(game.players) do
            for _, node in pairs(player.surface.find_entities_filtered({name="routing-node"})) do
               player.print(node.name .. " at {" .. node.position.x .. "," .. node.position.y .. "}")
               
               for itemname, itemnumber in pairs(node.get_inventory(1).get_contents()) do
                  player.print("    " .. itemname .. ": " .. itemnumber)
               end
            end
         end
      end
   end
)