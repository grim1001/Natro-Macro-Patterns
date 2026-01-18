g_Walk(t,d,s:=0) => ((s!=0) ? (nm_Walk(t,d,s),Sleep(35),0):(nm_Walk(t,d),Sleep(35),0))
;^^^^^^ Credits to Dully176 for making this function this is slighty modified to have a different name, and longer sleep time.
g_cameraRotation(Dir, count) => (nm_cameraRotation(Dir, count), Sleep(45), 0)

rockalign1() {
    g_Walk(8.5 * size, RightKey)
    g_Walk(10 * size, FwdKey)
    Sleep(50)
}

rockalign2() {
    g_Walk(20 * size, BackKey, RightKey)
    Sleep(50)
}

Loop reps {
    g_cameraRotation("up", 4)
    g_Walk(20.5 * size, BackKey, RightKey)
    g_cameraRotation("right", 2), Sleep(50)
    g_Walk(8 * size, BackKey)
    g_Walk(2 * size, LeftKey)
    g_Walk(8 * size, FwdKey)
    g_Walk(2 * size, LeftKey)
    g_Walk(8 * size, BackKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(8 * size, FwdKey)
    g_Walk(1 * size, LeftKey)
    g_Walk(8 * size, BackKey)
    rockalign1()
    Sleep(50)
    
    ; Second Pass w/rotation
    g_cameraRotation("left", 2)
    Sleep(50)
    g_Walk(6.5 * size, FwdKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(6.5 * size, BackKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(6.5 * size, FwdKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(6.5 * size, BackKey)
    g_Walk(1.5 * size, LeftKey)
    g_Walk(6.5 * size, FwdKey)
    rockalign2()
}
g_cameraRotation("down", 4)