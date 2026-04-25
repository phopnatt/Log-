--Log GrandPieceOnline by J4Z4 (Darkflower)
repeat task.wait() until game:IsLoaded()
getgenv().ConfigHorstGrandPieceOnline = {
    ["JA_DOO_RAI"] = {
        ["Level"] = true,--เปืดถ้าอยากให้โชว์เวล
        ["World"] = true,--เปิดถ้าอยากให้เเสดงโลกที่อยู่
        ["Haki"] = true,--เปิดถ้าอยากให้เเสดงสถาณะฮาคิเกราะ
        ["World_Scroll"] = true,--เปิดถ้าอยากให้โชว์ว่ามีม้วนไปโลก2 ไหม
        ["Skywalk"] = true,--เปิดถ้าอยากให้เเสดงว่ามีGeppoไหม
    },
    ["Performance"] = {
        ["DISABLE3DRENDER"] = false,--เปิดจอขาว
        ["LockFps"] = {
            ["EnableLockFps"] = false,--ล็อกFPS ถ้าอยากให้ล็อคSet เป็นTrue
            ["LockFpsAmount"] = 67 --FPSที่ต้องการLock เกมนี้ก็เเนะนํา 15-20
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/HorstSpaceX/last_update/main/on_loaded.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/phopnatt/Log-/refs/heads/main/Nogetgenv%20ontop.lua"))()