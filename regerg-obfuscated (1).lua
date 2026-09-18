_G.mainhandler = getfenv(require(game.ReplicatedStorage.client.legacy.MainHandler))
workspace.ServerStuff.changeStats:InvokeServer("changeclass", "shawdawdotgun")
_G.mainhandler.teamfolder = workspace.activeHostiles
getfenv(require(game:GetService("ReplicatedStorage").client.legacy.MainHandler)).baselayer = {
    game.Players.LocalPlayer,
    workspace.NoTarget,
    workspace.GoreEffects,
    workspace.CurrentCamera,
    workspace.activePassives,
    workspace.PlayerShootThroughs,
    workspace.activeHostiles
}
