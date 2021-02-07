global CapsLockX_PathModules := "./Modules"
global CapsLockX_PathCore := "./Core"
global CapsLockX_Version := "v1.7.0 Beta"

GoSub Setup_1
GoSub Setup_2
GoSub Setup_3
GoSub Setup_4
GoSub Setup_5
GoSub Setup_6
GoSub Setup_7
GoSub Setup_8
GoSub Setup_9
GoSub Setup_10
GoSub Setup_11
GoSub Setup_12
GoSub Setup_13
GoSub Setup_14
GoSub Setup_15
GoSub Setup_16

Return
#If
    Setup_1:
        #Include ./Modules\00-Help.ahk
#If
    Setup_2:
        #Include ./Modules\01-插件-加速模型.ahk
#If
    Setup_3:
        #Include ./Modules\01.1-插件-模拟鼠标.ahk
#If
    Setup_4:
        #Include ./Modules\01.2-插件-编辑增强.ahk
#If
    Setup_5:
        #Include ./Modules\03-VirtualDesktopManage.ahk
#If
    Setup_6:
        #Include ./Modules\03.1-插件-窗口增强.ahk
#If
    Setup_7:
        #Include ./Modules\ActiveBlinkingWindow.ahk
#If
    Setup_8:
        #Include ./Modules\CapsLockX_Reload.ahk
#If
    Setup_9:
        #Include ./Modules\CapsLockX提权请求.ahk
#If
    Setup_10:
        #Include ./Modules\SaladictTranslate.ahk
#If
    Setup_11:
        #Include ./Modules\SnoChordTyping.ahk
#If
    Setup_12:
        #Include ./Modules\ToolTipFont.ahk
#If
    Setup_13:
        #Include ./Modules\应用-CapsX-Cursor.ahk
#If
    Setup_14:
        #Include ./Modules\应用-IAR改选项为CMSIS-DAP.ahk
#If
    Setup_15:
        #Include ./Modules\应用-LoopbackExemptionManager.ahk
#If
    Setup_16:
        #Include ./Modules\应用-MobaXterm.ahk

