while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait() end

local chatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)
local chatFrame = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame

local extraOffset = (7 * 2) + (5 * 2)

chatSettings.WindowResizable = true
chatSettings.ShowUserOwnFilteredMessage = true
chatSettings.ShowFriendJoinNotification = true

chatSettings.ClickOnPlayerNameToWhisper = true

chatSettings.PlayerDisplayNamesEnabled = false -- See Usernames instead of Nicknames
chatSettings.WhisperByDisplayName = false

chatSettings.DefaultFont = Enum.Font.SourceSansBold
chatSettings.ChatBarFont = Enum.Font.SourceSansBold

chatSettings.ChatAnimationFPS = 40.0 --Normally 20FPS

chatSettings.MinimumWindowSize = UDim2.new(0.18, 0, 0.145, 0)
chatSettings.DefaultWindowSizeDesktop = UDim2.new(0.18, 0, 0.145, extraOffset)


chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)