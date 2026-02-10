local L = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local W = L.CreateLib("MÈO RỪNG RBL - SMART KEY", "DarkTheme")
local S = W:NewTab("Hệ Thống Key"):NewSection("Key Script")

S:NewTextBox("Nhập Key", "Dán key mrrbl_ vào đây", function(t)
    -- Lấy 3 số cuối của key để giải mã ngày
    local secret = tonumber(string.sub(t, -3))
    
    if secret then
        local key_day = (secret - 123) / 7
        local today = tonumber(os.date("%d"))
        local yesterday = tonumber(os.date("%d", os.time() - 86400))

        -- Kiểm tra nếu key được tạo hôm nay hoặc hôm qua
        if key_day == today or key_day == yesterday then
            L:Notify("Thành Công", "Key hợp lệ! Đang mở script...", 5)
            task.wait(2)
            game:GetService("CoreGui")["MÈO RỪNG RBL - SMART KEY"]:Destroy()
            -- CHẠY SCRIPT CHÍNH
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        else
            L:Notify("Lỗi", "Key đã hết hạn sử dụng!", 5)
        end
    else
        L:Notify("Lỗi", "Định dạng Key không đúng!", 5)
    end
end)

S:NewButton("Lấy Key", "Copy link vượt quảng cáo", function()
    setclipboard("https://link4m.com/ZMWSMfew")
    L:Notify("Đã Copy", "Hãy dán link vào trình duyệt để lấy Key", 5)
end)
