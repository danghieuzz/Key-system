local L = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local W = L.CreateLib("MÈO RỪNG RBL SYSTEM", "DarkTheme")
local S = W:NewTab("Key"):NewSection("Nhập Key")

S:NewTextBox("Key", "Dán mrrbl_ tại đây", function(t)
    if t:sub(1, 6) == "mrrbl_" then
        L:Notify("Thành Công", "Đang tải...", 5)
        task.wait(2)
        game:GetService("CoreGui")["MÈO RỪNG RBL SYSTEM"]:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    else
        L:Notify("Lỗi", "Key sai!", 5)
    end
end)

S:NewButton("Lấy Key", "Copy link", function()
    setclipboard("https://note.cswz.site/z/EnJS9f")
    L:Notify("Đã Copy", "Dán vào trình duyệt để lấy key", 5)
end)
