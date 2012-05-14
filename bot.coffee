git = require("gift")
fs = require("fs")
repo = git("jsuc3m.github.com.wiki/.")

console.log("JSUC3Mbot is working. Relax while I make your popcorn.")
repo.remote_fetch "origin", (err) ->
  console.log "Fetched!"
  throw err if err isnt null
  repo.checkout "master", (err) ->
    console.log "Checked out!"
    throw err  if err isnt null
    repo.git "rebase", (err) ->
      console.log "Rebased!"
      throw err  if err isnt null
      fs.readFile "jsuc3m.github.com.wiki/Prueba-Bot.md", (err, contents) ->
        contents = "" if err
        contents = contents + "\n\nHola mundo! " + Date()
        fs.writeFile "jsuc3m.github.com.wiki/Prueba-Bot.md", contents, (err) ->
          console.log "File written!"
          repo.add "Prueba-Bot.md", (err) ->
            console.log "File added!"
            repo.commit "JSUC3MBot en accion! (" + Date() + ")",
              all: true
              author: "\"JSUC3Mbot <jsuc3mbot@itram.es>\"", (err) ->
                console.log "Change commited!"
                throw err if err isnt null
                repo.git "push", (err) ->
                  console.log "aand change pushed!"
                  throw err if err isnt null